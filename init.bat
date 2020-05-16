cls
choice /C 12345 /M "Select a project type"
IF ERRORLEVEL 1 SET REPO=Python
IF ERRORLEVEL 2 SET REPO=Nodejs
IF ERRORLEVEL 3 SET REPO=Puppet
IF ERRORLEVEL 4 SET REPO=job
IF ERRORLEVEL 5 SET REPO=other
git checkout %REPO%
rm -f .git
setup.bat
del %0