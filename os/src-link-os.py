# -*- coding: utf-8 -*-
"""
Created on Sun Nov 12 18:05:24 2023

@author: 19738
"""

import subprocess
import time

def run_powershell_help():
    # 创建PowerShell进程
    powershell = subprocess.Popen(['powershell'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
    # 等待PowerShell启动完成
    time.sleep(1)
    
    # 在PowerShell中运行指定命令
    powershell.stdin.write(b'[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12; Invoke-Expression (New-Object Net.WebClient).DownloadString("https://gist.githubusercontent.com/Star-Rail-Station/2512df54c4f35d399cc9abbde665e8f0/raw/get_warp_link_os.ps1?cachebust=srs")\n')
    
    # 读取并输出PowerShell的标准输出和错误输出
    stdout_data, stderr_data = powershell.communicate()
    # 输出返回值（标准输出）
    print('Standard Output:')
    print(stdout_data.decode('GBK'))
    # 输出返回值（错误输出）
    print('Standard Error:')
    print(stderr_data.decode('GBK'))
    print('执行完毕，链接已复制到剪贴板~')
    print('5s后自动关闭窗口')
    
# 调用函数
run_powershell_help()

if __name__ == '__main__':
    run_powershell_help()