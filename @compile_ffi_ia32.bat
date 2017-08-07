@echo off
color 0A

if not exist node_modules\ffi (
    echo ^> node-ffi error!
    cmd /k cd /d %cd%
)

if not exist node_modules\ref (
    echo ^>ref
    cmd /k cd /d %cd%
)

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
     
:: Electron 的版本
set npm_config_target=6.11.1
:: Electron 的系统架构, 值为 ia32 或者 x64。
set npm_config_arch=ia32
set npm_config_target_arch=ia32
:: 下载 Electron 的 headers。
set npm_config_disturl=https://atom.io/download/atom-shell
:: 告诉 node-pre-gyp 是为 Electron 构建。
set npm_config_runtime=electron
:: 告诉 node-pre-gyp 从源代码构建模块。
set npm_config_build_from_source=true
:: 指定MSVS版本 必须2015
set msvs_version=2015
:: 查看配置信息
cmd /c npm config ls -l

echo:
echo ^>cd /d %cd%\node_modules\ffi
echo:
cd node_modules\ffi
cmd /c node-gyp rebuild
echo:

echo:
echo ^>cd /d %cd%\node_modules\ref
echo:
cd ..\ref
cmd /c node-gyp rebuild
echo:

echo:
echo ^>npm -g outdated
echo ^>npm install -g npm-check
echo ^>npm-check -u -g
echo:
::cmd /k cd /d %cd%
cmd /k cd ../../