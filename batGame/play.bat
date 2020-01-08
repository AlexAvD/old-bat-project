@echo off
setlocal enabledelayedexpansion
title TOP-GAME

call init

:loop
call render
goto :loop

