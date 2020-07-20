rem
rem Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para compilação (Windows/MinGW)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando MinGW, fazendo uma cópia e ajustando os parâmetros e caminhos.
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

rem Define se é Harbour ou xHarbour (harbour ou xharbour)
set HBCOMP=harbour

rem Define a versão do Qt (qt486, qt487, ...)
set QTVERSION=qt487

rem Define o compilador C++ (mingw/mingw64)
set QTCOMP=mingw

rem Define a plataforma (windows)
set QTPLATFORM=windows

rem Cria a pasta para as bibliotecas, caso não exista.
if not exist lib mkdir lib
if not exist lib\%QTVERSION% mkdir lib\%QTVERSION%
if not exist lib\%QTVERSION%\%QTCOMP% mkdir lib\%QTVERSION%\%QTCOMP%
if not exist lib\%QTVERSION%\%QTCOMP%\%QTPLATFORM% mkdir lib\%QTVERSION%\%QTCOMP%\%QTPLATFORM%
if not exist lib\%QTVERSION%\%QTCOMP%\%QTPLATFORM%\%HBCOMP% mkdir lib\%QTVERSION%\%QTCOMP%\%QTPLATFORM%\%HBCOMP%

rem Cria a pasta para os objetos, caso não exista.
if not exist obj mkdir obj
if not exist obj\%QTVERSION% mkdir obj\%QTVERSION%
if not exist obj\%QTVERSION%\%QTCOMP% mkdir obj\%QTVERSION%\%QTCOMP%
if not exist obj\%QTVERSION%\%QTCOMP%\%QTPLATFORM% mkdir obj\%QTVERSION%\%QTCOMP%\%QTPLATFORM%
if not exist obj\%QTVERSION%\%QTCOMP%\%QTPLATFORM%\%HBCOMP% mkdir obj\%QTVERSION%\%QTCOMP%\%QTPLATFORM%\%HBCOMP%

rem Compila as bibliotecas.
mingw32-make -f makefile_mingw 1>%QTVERSION%_%QTCOMP%_%QTPLATFORM%_%HBCOMP%-1.log 2>%QTVERSION%_%QTCOMP%_%QTPLATFORM%_%HBCOMP%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set HBCOMP=
set QTVERSION=
set QTCOMP=
set QTPLATFORM=

pause
