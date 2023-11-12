@chcp 65001

@echo off
:input
title 星铁链接获取
::bat标题
echo 请选择你的服务器（【国际服：1】，【国服：2】，【退出：3】）
set /p "num=请在这里输入，然后按下回车键继续："
if "%num%"=="1" cls & goto 1
if "%num%"=="2" cls & goto 2
if "%num%"=="3" cls & goto 3
echo. & echo 没有其他服务器啦！& echo 按下回车键重新输入...... & pause>nul & cls & goto input

:1
start src-link-os.exe
echo 已为你选择：国际服
pause>nul
cls & goto final
:2
start src-link-cn.exe
echo 已为你选择：国服
pause>nul
cls & goto final
:3
exit

:final
echo 链接已复制到剪贴板
pause
cls & goto input