@echo off
color 0A

echo ^>node -v
cmd /c node -v
echo:

echo ^>npm -v
cmd /c npm -v
echo:

echo ^>yarn --version
cmd /c yarn --version
echo:

echo ^>gulp -v
cmd /c gulp -v
echo:

echo ^>cd /d %cd%
cmd /k npm run dev
