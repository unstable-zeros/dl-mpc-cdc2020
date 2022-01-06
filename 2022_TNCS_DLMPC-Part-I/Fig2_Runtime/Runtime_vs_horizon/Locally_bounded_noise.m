%% Setup plant
gridSize      = 4; % total size = gridSize^2
seed          = 621;
connectThresh = 0.65; % lower = more connected grid

plotTopology = false;

[sys, adjMtx, nodeCoords] = get_plant(gridSize, seed, connectThresh);

if plotTopology
    fig1h = figure(1);
    plot_graph(adjMtx, nodeCoords, 'k');

    x = 10; y = 50; width = 580; height = 500;
    set(fig1h, 'Position', [x y width height]); % display only
end

%% Run simulations
d        = 4;
Ts       = [4 5 8 10];
tHorizon = 20;
sigma    = 1;

scenariosRob = {ScenarioType.CentRobust, ScenarioType.DistRobust};

% Disturbances
rng(seed);

data_rvh_rob = cell(length(Ts), 1); 

for i = 1:length(Ts)
    fprintf('Scanning horizon length %d of %d\n', i, length(Ts));
    T = Ts(i);

    lbn = true; % get controller for locally bounded noise
    params = get_controller_params(sys, d, T, lbn);

    % Locally bound w (depends on d)
    x0 = rand(sys.Nx, 1);
    w  = 2 * rand(sys.Nx, tHorizon) - 1; % w in [-1, 1]
    w  = get_loc_bnd_noise(w, sys, params, sigma);

    params.eps_p_    = 8e-3;
    params.eps_d_    = 8e-3;
    params.maxIters_ = 8000;
    params.rho_      = 1;
    params.tau_i_    = 1.5;
    params.tau_d_    = 1.5;
    params.muAdapt_  = 10;
    params.rhoMax_   = 5;
    
    data_rvh_rob{i} = run_scenarios(sys, params, tHorizon, w, x0, scenariosRob);
end

% Sanity check: these should be relatively small
for i = 1:length(Ts)
    fprintf('T: %d\n', Ts(i));
    print_cent_dist_diff(data_rvh_rob{i}, 'Robust ');
end

save('data_rvh.mat');

%% Plot (not formatted for paper)
rvhs = zeros(length(Ts), 1);
for i = 1:length(Ts)
    rvhs(i) = data_rvh_rob{i}{2}{3}; % robust    
end

figure(1); hold on;
plot(Ts, rvhs);

xlabel('T');
ylabel('Runtime per state, robust');