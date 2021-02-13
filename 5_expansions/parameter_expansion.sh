# https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameter-Expansion
string=01234567890abcdefgh

echo ${string:7}   # 7890abcdefgh
echo ${string:7:0} #
echo ${string:7:2} # 78
# bash 4开始支持负数
# echo ${string:7:-2}    # 7890abcdef
echo ${string: -7}    # bcdefgh
echo ${string: -7:0}  #
echo ${string: -7:2}  # bc
echo ${string: -7:-2} # bcdef

unset string
echo ${parameter:=word}

set -- 01234567890abcdefgh
echo ${1:7}      # 7890abcdefgh
echo ${1:7:0}    #
echo ${1:7:2}    # 78
echo ${1:7:-2}   # 7890abcdef
echo ${1: -7}    # bcdefgh
echo ${1: -7:0}  #
echo ${1: -7:2}  # bc
echo ${1: -7:-2} # bcdef

set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo ${@:7}     # 7 8 9 0 a b c d e f g h
echo ${@:7:0}   #
echo ${@:7:2}   # 7 8
echo ${@:7:-2}  # substring expression < 0
echo ${@: -7:2} # b c
echo ${@:0}     # 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo ${@:0:2}   # 1
echo ${@: -7:0} #
