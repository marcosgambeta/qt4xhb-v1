rem
rem Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utilização do Qt4xHb com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instalação do compilador C/C++.
set CPPDIR=C:\MinGW32

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

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
