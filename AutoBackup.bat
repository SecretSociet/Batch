@echo off
set "nom=Nome de usuario: "
set /p nome=%nom%
cd C:\Users\%nome%\Desktop
cls
set "ori=Qual e o diretorio em que esses arquivos estao? "
set /p origem=%ori%
cls
choice /c PO /m "Copiar os arquivos em uma pasta ou no Onedrive? "
if errorlevel 2 goto ten
if errorlevel 1 goto three
:ten
cls
set "extension=Qual a extensao do arquivo? "
set /p ext=%extension%
cd C:\Users\%nome%\%origem%
xcopy C:\Users\%nome%\%origem%\*.%ext% C:\Users\%nome%\OneDrive\ /s /e /y
endlocal
pause
exit
:three
choice /c SN /m "Você ja nomeou a pasta? "
if errorlevel 2 goto five
if errorlevel 1 goto six
:five
cls
set "save=Qual o nome que deseja que sua pasta tenha? "
set /p destino=%save%
cd C:\Users\User\Desktop
md %destino%
goto feven
:six
cls
set "pst=Diga o nome da pasta: "
set /p destino=%pst%
goto feven
:feven
choice /c SN /m "Dsejar copiar todos os arquivos com determinada extensao? "
if errorlevel 2 goto two
if errorlevel 1 goto one
:one
cls
set "extension=Qual a extensao do arquivo? "
set /p ext=%extension%
cd C:\Users\%nome%\%origem%
xcopy C:\Users\%nome%\%origem%\*.%ext% C:\Users\%nome%\Desktop\%destino%\ /s /e /y
endlocal
pause
exit
:two
cls
set "arive=Qual o nome do arquivo? "
set /p arq=%arive%
xcopy C:\Users\%nome%\%origem%\%arq% C:\Users\%nome%\Desktop\%destino%\ /s /e /y
pause
exit 

