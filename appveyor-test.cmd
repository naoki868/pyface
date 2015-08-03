set ETS_TOOLKIT=qt4
coverage run -m nose.core -v --exclude-dir=pyface/ui/wx --exclude="enaml"
if %errorlevel% neq 0 exit /b %errorlevel%
coverage run -a -m nose.core -v pyface/tasks/tests/*enaml*
if %errorlevel% neq 0 exit /b %errorlevel%
coverage report
