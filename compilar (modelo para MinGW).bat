rem
rem Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
rem
rem Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Batch para compila��o (Windows/MinGW)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando MinGW, fazendo uma c�pia e ajustando os par�metros e caminhos.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=C:\MinGW32

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define a plataforma (win)
set QTPLATFORM=win

rem Define o compilador C++ (mingw/mingw64)
set QTCOMP=mingw

rem Define se � Harbour ou xHarbour (harbour ou xharbour)
set HBCOMP=harbour

rem Ative a linha abaixo para usar a flag QT4XHB_DONT_CHECK_PARAMETERS
rem set QT4XHB_USER_CFLAGS=-DQT4XHB_DONT_CHECK_PARAMETERS

rem Cria a pasta para as bibliotecas, caso n�o exista.
if not exist lib mkdir lib
if not exist lib\%QTPLATFORM% mkdir lib\%QTPLATFORM%
if not exist lib\%QTPLATFORM%\%QTCOMP% mkdir lib\%QTPLATFORM%\%QTCOMP%

rem Cria a pasta para os objetos, caso n�o exista.
if not exist obj mkdir obj
if not exist obj\%QTPLATFORM% mkdir obj\%QTPLATFORM%
if not exist obj\%QTPLATFORM%\%QTCOMP% mkdir obj\%QTPLATFORM%\%QTCOMP%

rem Compila as bibliotecas.
mingw32-make -f makefile_mingw 1>%QTPLATFORM%_%QTCOMP%-1.log 2>%QTPLATFORM%_%QTCOMP%-2.log

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause
