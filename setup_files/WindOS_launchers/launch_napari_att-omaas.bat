@echo off
setlocal

rem
set PATH=c:\ProgramData\Miniconda3\condabin;%PATH%
call conda activate omass_env_base
napari --with napari-omaas
call conda deactivate
