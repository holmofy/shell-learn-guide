# 括号扩展是一种可以生成任意字符串的机制
echo a{d,c,b}e    # ade ace abe
echo {20,18,30}   # 20 18 30
echo {a{1,3},b3}  # a1 a3 b3
echo {a{1..3},b3} # a1 a2 a3 b3
echo {a..g}       # a b c d e f g
echo {0..9}       # 0 1 2 3 4 5 6 7 8 9
# Bash 4开始支持前缀和step，语法 {x..y[..incr]}
echo {01..10}                  # 01 02 03 04 05 06 07 08 09 10
echo "Even Numbers:" {0..9..2} # Even Numbers: 0 2 4 6 8
echo "Odd Numbers:" {1..9..2}  # Odd Numbers: 1 3 5 7 9
# 不支持的版本可以使用seq命令替代
echo $(seq 1 9)              # 1 2 3 4 5 6 7 8 9 10
echo $(seq 0 2 9)            # 0 2 4 6 8
echo $(seq 1 2 9)            # 1 3 5 7 9
echo $(seq -f "%04g" 1 3 20) # 0001 0004 0007 0010 0013 0016 0019