# Distributed and Localized Model Predictive Control

This repository hosts the code needed to reproduce the examples in the published work:

1. C. Amo Alonso and N. Matni. "Distributed and Localized Model Predictive Control via System Level Synthesis". In _Proceedings of the 59th IEEE Conference on Decision and Control. IEEE_, 2020, pp. 5598-5605, doi: 10.1109/CDC42340.2020.9303936.

2. C. Amo Alonso, J. Anderson, and N. Matni. "Explicit Distributed and Localized Model Predictive Control via System Level Synthesis". In _Proceedings of the 59th IEEE Conference on Decision and Control. IEEE_, 2020, pp. 5606-5613, doi: 10.1109/CDC42340.2020.9304349.

3. C. Amo Alonso, S.J. Li, J. Anderson, and N. Matni. Robust Distributed and Localized Model Predictive Control via System Level Synthesis. arXiv Preprint, 2021, (https://arxiv.org/abs/2110.07010).

4. C. Amo Alonso, S.J. Li, J. Anderson, and N. Matni. Distributed and Localized Model Predictive Control via System Level Synthesis. Part I: Synthesis and Implementation. Submitted to _IEEE Transactions on Control of Network Systems_, 2022, (https://arxiv.org/abs/2110.07010).

5. C. Amo Alonso, S.J. Li, J. Anderson, and N. Matni. Distributed and Localized Model Predictive Control via System Level Synthesis. Part II: Theoretical Guarantees. Submitted to _IEEE Transactions on Control of Network Systems_, 2022, (TBD).

6. C. Amo Alonso, F. Yang, and N. Matni. Data-Driven Distributed and Localized Model Predictive Control via System Level Synthesis. Submitted to _IEEE Open Journal of Control Systems_, 2022, (https://arxiv.org/abs/2112.12229).

## 2020_CDC_DLMPC

This folder hosts the code needed to reproduce the examples in article [1] and its extended version https://arxiv.org/abs/1909.10074. 

The names of the folders correspond to the figure's number that they generate. Since the experiments run for the extended version are more comprehensive, the figure numbers correpond to those in the extended version. 

Each of the scnearios/cases shown in each of the figures is simulated individually, with a script named "scenario[number]" or "case[number]" as appropriate (open loop is named "scenario0"). To reproduce the figures in the paper, once the script is run the data must be saved in a .mat file named the same as the corresponding .m script. After all the scenarios in a folder have been simulated and the corresponding data have been run, "ploting_code.m" produces the figures shown in the paper.  

*Warning*: some of the scripts, in particular the ones concerning runtime measures, might take several hours to run.

## 2020_CDC_Explicit-DLMPC

This folder hosts the code needed to reproduce the examples in article [2] and its extended version https://arxiv.org/abs/2005.13807. 

The codes generate the data shown in Figure 2. Each of the scnearios/cases shown in each of the figures is simulated individually, with a script named "scenario[number]" or "case[number]" as appropriate (open loop is named "scenario0"). To reproduce the figures in the paper, once the script is run the data must be saved in a .mat file named the same as the corresponding .m script. After all the scenarios in a folder have been simulated and the corresponding data have been run, "ploting_code.m" produces the figures shown in the paper.  

*Warning*: some of the scripts, in particular the ones concerning runtime measures, might take several hours to run.

## 2021_arXiv_Robust-DLMPC

This folder hosts the code needed to reproduce the examples in preprint [3].

**This code requires the SLS-MATLAB toolbox by J. S. Li, available at https://github.com/sls-caltech/sls-code.** 

Please clone the SLS-MATLAB repository and run the /matlab/init.m script. Once this is done, run the init.m script located in the current folder ( 2021_arXiv_Robust-DLMPC). After these steps, the desired scripts can be run normally. The are located in the corresponding folder named after the figure/table that they generate. 

*Note*: the functions containing the algorithms described in preprint [3] are implemented within the SLS-MATLAB toolbox. Interested users might refer to the specific functions located in the SLS-MATLAB toolbox repository.

*Warning*: some of the scripts, in particular the ones concerning runtime measures, might take several hours to run.

## 2022_TNCS_DLMPC-Part-I

This folder hosts the code needed to reproduce the examples in article [4].

**This code requires the SLS-MATLAB toolbox by J. S. Li, available at https://github.com/sls-caltech/sls-code.** 

Please clone the SLS-MATLAB repository and run the /matlab/init.m script. Once this is done, run the init.m script located in the current folder ( 2022_TNCS_DLMPC-Part-I). After these steps, the desired scripts can be run normally. The are located in the corresponding folder named after the figure/table that they generate. 

*Note*: the functions containing the algorithms described in article [4] are implemented within the SLS-MATLAB toolbox. Interested users might refer to the specific functions located in the SLS-MATLAB toolbox repository.

*Warning*: some of the scripts, in particular the ones concerning runtime measures, might take several hours to run.

## 2022_TNCS_DLMPC-Part-II

This folder hosts the code needed to reproduce the examples in article [5].

**This code requires the SLS-MATLAB toolbox by J. S. Li, available at https://github.com/sls-caltech/sls-code.** 

Please clone the SLS-MATLAB repository and run the /matlab/init.m script. Once this is done, run the init.m script located in the current folder ( 2022_TNCS_DLMPC-Part-II). After these steps, the desired scripts can be run normally. The are located in the corresponding folder named after the figure/table that they generate. 

*Note*: the functions containing the algorithms described in article [5] are implemented within the SLS-MATLAB toolbox. Interested users might refer to the specific functions located in the SLS-MATLAB toolbox repository.

*Warning*: some of the scripts, in particular the ones concerning runtime measures, might take several hours to run.

## 2022_OJCS_DataDriven-DLMPC

TBD
