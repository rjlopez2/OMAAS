@echo off
setlocal

rem
rem set PATH=c:\ProgramData\Miniconda3\condabin;%PATH%
call conda micromamba activate omaas_base
call napari --with napari-omaas
pause
powershell micromamba deactivate
