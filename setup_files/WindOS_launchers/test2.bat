@echo off
setlocal

rem set PATH=c:\ProgramData\Miniconda3\condabin;%PATH%
rem set MAMBA_ROOT_PREFIX=C:\Users\lopez.PHYSIO\micromambaenv
cd /d C:\Users\lopez.PHYSIO\
rem call .\micromamba.exe shell hook -s cmd.exe
rem call "C:\\Users\\lopez.PHYSIO\\micromambaenv\\condabin\\mamba_hook.bat"
.\micromamba.exe shell init -s cmd.exe -p C:\Users\lopez.PHYSIO\micromambaenv
micromamba env list
micromamba shell init --shell cmd.exe --root-prefix=~/micromamba
pause 
micromamba activate omaas_base
call napari --with napari-omaas
pause
rem call micromamba shell init --shell cmd.exe --root-prefix=C:\Users\lopez.PHYSIO\micromambaenv
rem call micromamba shell reinit --shell cmd.exe
rem pause 
call micromamba activate omaas_base
pause
call napari --with napari-omaas
rem pause


rem call conda micromamba activate omaas_base
rem call napari --with napari-omaas
rem pause
rem powershell micromamba deactivate




cd /d C:\Users\lopez.PHYSIO\
.\micromamba.exe shell init -s cmd.exe -p C:\Users\lopez.PHYSIO\micromambaenv
micromamba activate omaas_base
napari --with napari-omaas