t init
echo pushd %CD% > run.bat
echo popd %CD% >> run.bat
setx jobpath %CD%
git config commit.template .git_commit_template.txt
mklink /J %CD%\user %me%\

