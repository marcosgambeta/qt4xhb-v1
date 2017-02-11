rem
rem Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4
rem
rem Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>
rem
rem Prompt de comando para utilização do Qt4xHb com MSVC.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Configura para compilação com o Visual C++.
rem Altere para %ProgramFiles% caso seu Windows seja 32-bit.
call "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%PATH%

rem Pasta include do Qt4xHb.
set QT4XHB_INC_DIR=include

rem Pasta lib do Qt4xHb.
set QT4XHB_LIB_DIR=lib

%ComSpec%

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT4XHB_INC_DIR=
set QT4XHB_LIB_DIR=

pause
