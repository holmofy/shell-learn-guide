func() {
    echo func call: $0                              # 3_parameter/parameter.sh
    echo 1th parameter: $1                          # 1
    echo 2th parameter: $2                          # 2 3
    echo 9th parameter: ${9:-this is default value} # this is default value
    echo all parameter: $*                          # 1 2 3 4 5
    echo all parameter: $@                          # 1 2 3 4 5
    echo length: $#                                 # 4
    echo func name: $FUNCNAME                       # func
    echo ${0} ${@}                                  # 3_parameter/parameter.sh 1 2 3 4 5

    echo '"$*" vs. "$@:"'
    echo "Using \"\$*\":"
    for a in "$*"; do
        echo $a
    done

    echo -e "\nUsing \$*:"
    for a in $*; do
        echo $a
    done

    echo -e "\nUsing \"\$@\":"
    for a in "$@"; do
        echo $a
    done

    echo -e "\nUsing \$@:"
    for a in $@; do
        echo $a
    done
}

func 1 '2 3' 4 5
