# OMAAS
OMAAS astand for Optical Mapping Acquisition and Analysis Software


This is a place for setting up enviroments, lounchers and all related software for the napari-omaas analysis tool and in general for the analysis and processing of Optical mapping data.

More documentation will come for each specifics analysis routine.

## Creating a working enviroenmet (windows users)

1. if you come from windows world, please download and **install git** from the official website [download-git].


2. now download and install [Github-desktop] and login with your credentials.

3. using Github-desktop **clone the [omaas-repo]** and place it into a folder where you will do your analysis example <br>

    working_folder/softwares/OMAAS...


4. **install minicoda** from here [download-miniconda].

5. open miniconda prompt and type: <br>

    conda init

6. restart the prompt

7. uning the miniconda prompt navigate to the folder <br>

    ```.../OMAAS/setup_files/environments/```

    and write the following command: <br>

    ```conda env create -f environment_OMAAS_base.yml```

8. if everything went well miniconda should have installed your environment called ```omaas_env_base``` with napari and all the additional plugins/dependencies.

9. using the windows explorer navigate to the folder ```.../OMAAS/setup_files/WindOS_launchers``` and create a shorcut of the file **launch_napari_att-omaas.bat** in your place of preference (it could be for example in the desktop or working directory for analysis.



[download-git]: https://git-scm.com/download/win
[download-miniconda]: https://docs.conda.io/en/latest/miniconda.html
[Github-desktop]: https://desktop.github.com/
[omaas-repo]: https://github.com/rjlopez2/OMAAS


## Creating a working enviroenmet (Mac users)
