#!/bin/bash

# 0	stdin	标准输入
# 1	stdout	标准输出
# 2	stderr	标准错误输出

# >	重定向输出
# &>	重定向输出和错误输出
# &>>	以附加的形式重定向输出和错误输出
# <	重定向输入
# <<	Here文档 语法
# <<<	Here字符串

# ls的结果将会被写到list.txt中
ls -l > list.txt

# 将输出附加到list.txt中
ls -a >> list.txt

# 所有的错误信息会被写到errors.txt中
grep da * 2> errors.txt

# 从errors.txt中读取输入
less < errors.txt