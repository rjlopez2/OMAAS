# need to be tested in Windows OS but there are some set of instructions ideas
# 3. pull the last changes from remote to local directory of OMAAS
# 1. activate conda env
# 2. remove the librari napari-omaas
# 3, install it again locally using conda install . -e

call conda activate base
call conda env remove -n omass_env_base -y
call conda env create -f ..\environments\environment_OMAAS_base.yml
# pause
