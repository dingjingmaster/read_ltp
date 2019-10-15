# ltp 阅读（基于ltp-20190930）

1. 安装autoconf
    yay -S autoconf

2. 编译：
    进入根目录执行(如果不能编译，先执行 make clean 再执行下述命令)：
    `./configure && make`

3. 所有debug日志输出到 rsyslog 的 LOCAL6 设备下
