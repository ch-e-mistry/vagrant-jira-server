title DevOps Training 2020 - Peter Mikaczo
cd /d %~dp0

REM VARIABLES
SET DOWNLOAD_URL=https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-8.13.1-x64.bin
REM #TODO Sync JIRA value with ./install_scripts/jira.sh
SET JIRA=atlassian-jira-software-8.13.1-x64.bin

IF EXIST .\files\%JIRA% goto start_ps
cscript /nologo .\tools\downloader.js %DOWNLOAD_URL%
RENAME downloaded.bin %JIRA%
MOVE /y %JIRA% .\files\%JIRA%
IF EXIST .\files\%JIRA% goto start_ps

:start_ps
powershell -file ".\2_start.ps1"
EXIT