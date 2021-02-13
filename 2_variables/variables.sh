#!/bin/sh

username="holmofy" # 声明变量
echo $username     # 输出变量的值

hostname="localhost"
echo $hostname
unset hostname # 删除变量

# local关键字声明属于某个函数的局部变量
# 这样声明的变量会在函数结束时消失
func() {
    local local_var="I'm a local value"
    echo $local_var
}

func # 调用函数

# 环境变量也就是全局变量，对当前shell会话的所有脚本都可见
export GLOBAL_VARIABLE="I'm a global variable"
echo $GLOBAL_VARIABLE

# 默认的环境变量
# https://www.gnu.org/software/bash/manual/bash.html#Bourne-Shell-Variables
echo \$HOME: $HOME         # 当前用户家目录
echo \$HOSTNAME: $HOSTNAME # 当前用户家目录
echo \$PATH: $PATH         # 用分号分隔的目录列表，shell会到这些目录中查找命令
echo \$PWD: $PWD           # 当前工作目录
echo \$RANDOM: $RANDOM     # 0到32767之间的整数
echo \$UID: $UID           # 数值类型，当前用户的用户ID
echo \$PS1: $PS1           # 主要系统输入提示符
echo \$PS2: $PS2           # 次要系统输入提示符
