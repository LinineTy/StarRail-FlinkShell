@echo off
chcp 65001>nul
goto txt  :: 跳转到 :txt 标签

:txt
title 星铁抽卡链接获取(2025.1.15版)
echo.
echo 星穹铁道抽卡分析脚本
echo.
echo 更新时间：2025.01.15
echo.
echo 编译日期：2023.11.12
echo.
echo 如无法使用，请反馈至邮箱：frlai@lininelye.xyz
echo.
pause  :: 暂停，等待用户按下任意键
cls & goto input

:input
echo.
echo 请选择你账号所在的服务器（【国服：1】，【国际服：2】）
echo.
echo 输入 0 可退出脚本
echo.
set "num="  :: 清空 num 变量
set /p "num=请在这里输入，然后按下回车键继续："
if "%num%"=="1" cls & goto 1
if "%num%"=="2" cls & goto 2
if "%num%"=="0" cls & goto exit
echo. & echo 没有其他服务器啦！& echo. & echo 按下回车键重新输入...... & echo. & pause & cls & goto input

:1
title 星铁抽卡链接获取(2025.1.15版)：国服脚本
if exist src-link-cn.exe (
    start src-link-cn.exe
    echo.
    echo 已为你选择：国服
    echo.
) else (
    echo 错误：src-link-cn.exe 不存在！
)
pause
cls & goto final

:2
title 星铁抽卡链接获取(2025.1.15版)：国际服脚本
if exist src-link-os.exe (
    start src-link-os.exe
    echo.
    echo 已为你选择：国际服
    echo.
) else (
    echo 错误：src-link-os.exe 不存在！
)
pause
cls & goto final

:final
title 星铁抽卡链接获取(2025.1.15版)：运行完成
echo.
echo 链接已复制到剪贴板
echo.
echo 粘贴在支持抽卡分析的软件处以使用链接
echo.
echo such as：小黑盒，星铁小助手，星穹工坊
echo.
echo 感谢使用~
echo.
pause
cls & goto input

:exit
exit
