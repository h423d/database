@ECHO OFF

:choice
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

SET mypath=%~dp0
SET mypath=%mypath:~1,0%
echo %mypath%
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\ODBC Data Sources"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines\Text"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\ODBC Data Sources" /v "csvtest" /t REG_SZ /d "Microsoft Access Text Driver (*.txt, *.csv)"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines\Text" /v "Extensions" /t REG_SZ /d "txt,csv,tab,asc"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines\Text" /v "ImplicitCommitSync" /t REG_SZ
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines\Text" /v "Threads" /t REG_DWORD /d 3
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest\Engines\Text" /v "UserCommitSync" /t REG_SZ /d "Yes"


reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "DefaultDir" /t REG_SZ /d %mypath%
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "Driver" /t REG_SZ /d "C:\PROGRA~1\COMMON~1\MICROS~1\OFFICE14\ACEODBC.DLL"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "DriverId" /t REG_DWORD /d 27
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "FIL" /t REG_SZ /d "text;"
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "SafeTransactions" /t REG_DWORD /d 0
reg add "HKEY_CURRENT_USER\SOFTWARE\ODBC\ODBC.INI\csvtest" /v "UID" /t REG_SZ

pause
exit

:somewhere_else


cls
echo. 
echo.         Вы разбудили древнее зло
echo.
echo.             $$$$$$$$$$$$$$$$$$$
echo.            $$$$$$$$$$$$$$$$$$$$$$$
echo.         $$$$   $$$$$$$$$$$$$$$   $$$ 
echo.       $$$$      $$$$$$$$$$$$      $$$$
echo.     $$$$$        $$$$$$$$$$        $$$$     
echo.    $$$$$          $$$$$$$$           $$$$      
echo.   $$$$$            $$$$$$            $$$$$       
echo.  $$$$$$            $$$$$$$            $$$$$         
echo.         $               $$    $$     $                 
echo.  $$$$$$           $$$$$$$$$           $$$$$$               
echo.  $$$$$$$         $$$ $$$ $$$         $$$$$$$                  
echo.  $$$$$$$$      $$$$   $   $$$$      $$$$$$$$       
echo.  $$$$$$$$$$$$$$$$$   $$$   $$$$$$$$$$$$$$$$$       
echo.  $$$ $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ o$$       
echo.  $$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  $$$        
echo.   $$$  $'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  o$$$          
echo.   '$$o  $$  $$'$$$$$$$$$$$$$$'$$  $$     o$$             
echo.     $$o$    $$  '$$'$$'$$'  $$      $   o$$             
echo.      $$$o$  $    $$   $$   $$     $$  o$              
echo.       '$$$$O$    $$    $$   $$     o$$$                 
echo.          '$$o$$   $$   $$   $$   o$$$                   
echo.            '$$$$o$o$o$o$o$o$o$o$$$$'                     
echo.               '$$$$$$$$$$$$$$$$$$$              
echo.               

pause
exit
