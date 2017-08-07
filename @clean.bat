@echo off
color 0A
del /f /s /q /a %cd%\node_modules\*.md
del /f /s /q /a %cd%\node_modules\LICENSE
del /f /s /q /a %cd%\node_modules\.jshintrc
del /f /s /q /a %cd%\node_modules\.eslintrc
del /f /s /q /a %cd%\.npminstall.done
del /f /s /q /a %cd%\README.markdown
del /f /s /q /a %cd%\.npmignore
del /f /s /q /a %cd%\.travis.yml
