@ECHO OFF
reg query "hkcu\software\Python"
if ERRORLEVEL 1 GOTO NOPYTHON
start "" http://127.0.0.1:8000/
python -m SimpleHTTPServer 8000
if ERRORLEVEL 1 GOTO PYTHON3

GOTO :EOF
:NOPYTHON
echo #####################
echo Please install Python
echo #####################
pause
GOTO:EOF
:PYTHON3
python -m http.server 8000 --bind 127.0.0.1
GOTO:EOF