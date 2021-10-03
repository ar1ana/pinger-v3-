@echo off
mode con lines=30 cols=70
chcp 65001
color 03 && cls
title violet Pinger

set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top
