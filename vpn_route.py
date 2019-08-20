import os
import subprocess
import time
import ctypes, sys

def op_route():
    res = subprocess.Popen("route print",stdout=subprocess.PIPE,shell=True)
    res1 = res.stdout.read().decode("gb2312")
    #print(res1)
    for line in res1.split("\r\n"):
        if line.strip().startswith("1.1.1.1"):
            print(line)
            pos = line.find("192")
            print(pos)
            ip = line[pos:pos+16].strip()
            print("start to delete 0.0.0.0")
            os.system("route delete 0.0.0.0")
            print(f"add {ip} to main")
            os.system(f"route add 0.0.0.0 mask 0.0.0.0 {ip} metric 10")

def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False
if is_admin():
    # 将要运行的代码加到这里
    try:
        op_route()
    except Exception as e:
        print(e)
    time.sleep(1000)
else:
    print("not")
    if sys.version_info[0] == 3:
    	ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, __file__, None, 1)
    else:#in python2.x
        ctypes.windll.shell32.ShellExecuteW(None, u"runas", unicode(sys.executable), unicode(__file__), None, 1)


