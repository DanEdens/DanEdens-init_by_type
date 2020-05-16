
cls
set /p projecttype="Select Project type.."
echo Python
echo Nodejs
echo Puppet
echo job
echo other
git checkout %%projecttype%%
rm -f .git

git init

echo pushd %CD% > run.bat

echo popd %CD% >> run.bat


setx jobpath %CD%


::make template
git config commit.template .git_commit_template.txt
::make
mklink /J %CD%\user %me%\