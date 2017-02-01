rem
rem Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4
rem
rem Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>
rem
rem Batch para compilar o Qt4xHb com o MSVC.
rem

call "C:\Qt\4.8.4\bin\qtvars.bat"

call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

set HBDIR=c:\harbour

set PATH=%HBDIR%\bin;%PATH%

mingw32-make -f makefile.vc

pause
