:: Copyright (c) 2018-2020 Peter Fritz
::
:: This Source Code Form is subject to the terms of the Mozilla Public
:: License, v. 2.0. If a copy of the MPL was not distributed with this
:: file, You can obtain one at https://mozilla.org/MPL/2.0/.

@echo off
title PreciseStopwatch by Peter Fritz
mode con: cols=80 lines=10

::Language Selection

cls
echo Select your language:
echo Selecione seu idioma:
echo Bitte Ihre Sprache angeben:
:options
echo English [EN]
echo Portugues [PT]
echo Deutsch (Beta) [DE]
set /P language= 
if %language%==EN goto EN
if %language%==en goto EN
If %language%==PT goto PT
If %language%==pt goto PT
If %language%==DE goto DE
If %language%==de goto DE
cls
echo Please choose one of the following options as shown.
echo Por favor selecione uma das opcoes como mostrado abaixo.
echo Bitte Ihre Sprache angeben.
goto options

::------------------------------------------------------------
:PT
cls
::Boas vindas PT

echo Bem vindo ao PreciseStopwatch.
echo Pressione 'Enter' para comecar o cronometro.
pause >nul

::TimeWatch PT
set /A s=0
set /A m=0
set /A h=0
set /A d=0
set i=%time%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
:TimeWatchPT
echo %s% segundos.
echo %m% minutos.
echo %h% horas.
echo %d% dias.
echo.
echo Inicio em: %i%
echo.
echo                                                          Script por Peter Fritz.
echo %d% dias, %h% horas, %m% minutos e %s% segundos; Contagem iniciada em %i%; Registro realizado em %time%; Script por Peter Fritz. > %CUR_HH%_%CUR_NN%.txt
set /A s=%s%+1
if %s%==60 (
set /A m=%m%+1
set /A s=0
)
if %m%==60 (
set /A h=%h%+1
set /A m=0
)
if %h%==24 (
set /A d=%d%+1
set /A h=0
)
timeout /t 1 /nobreak >nul
::timeout /t 1 >nul
cls
goto :TimeWatchPT
::------------------------------------------------------------





::------------------------------------------------------------
:EN
cls
::Welcome EN

echo Welcome to PreciseStopwatch.
echo Press 'Enter' to continue.
pause >nul

::TimeWatch EN
set /A s=0
set /A m=0
set /A h=0
set /A d=0
set i=%time%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
:TimeWatchEN
echo %s% seconds.
echo %m% minutes.
echo %h% hours.
echo %d% days.
echo.
echo Started at: %i%
echo.
echo                                                           Script by Peter Fritz.
echo %d% days, %h% hours, %m% minutes e %s% seconds; PreciseStopwatch started at %i%; data recorded at %time%; Script by Peter Fritz. > %CUR_HH%_%CUR_NN%.txt
set /A s=%s%+1
if %s%==60 (
set /A m=%m%+1
set /A s=0
)
if %m%==60 (
set /A h=%h%+1
set /A m=0
)
if %h%==24 (
set /A d=%d%+1
set /A h=0
)
timeout /t 1 /nobreak >nul
::timeout /t 1 >nul
cls
goto :TimeWatchEN
::------------------------------------------------------------





::------------------------------------------------------------
:DE
cls
::Willkommen DE

echo Willkommen bei PreciseStopwatch.
echo Druecken Sie die Eingabetaste, um die PreciseStopwatch zu starten.
pause >nul

::TimeWatch DE
set /A s=0
set /A m=0
set /A h=0
set /A d=0
set i=%time%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
:TimeWatchDE
echo %s% Sekunden.
echo %m% Minuten.
echo %h% Stunde.
echo %d% Tage.
echo.
echo Anfang am: %i%
echo.
echo                                                           Script by Peter Fritz.
echo %d% Tage, %h% Stunde, %m% Minuten e %s% Sekunden; PreciseStopwatch begann um %i%; Daten eingefuehrt um %time%; Script by Peter Fritz. > %CUR_HH%_%CUR_NN%.txt
set /A s=%s%+1
if %s%==60 (
set /A m=%m%+1
set /A s=0
)
if %m%==60 (
set /A h=%h%+1
set /A m=0
)
if %h%==24 (
set /A d=%d%+1
set /A h=0
)
timeout /t 1 /nobreak >nul
::timeout /t 1 >nul
cls
goto :TimeWatchDE
