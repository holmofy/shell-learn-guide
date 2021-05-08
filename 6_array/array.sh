#!/bin/bash
fruits[0]=Apple
fruits[1]=Pear
fruits[2]=Plum

echo $fruits;
echo ${fruits[1]};
echo ${fruits[*]}
echo ${fruits[@]}

fruits=(Apple Pear Plum)
printf "+ %s\n" "${fruits[*]}"
printf "| %s\n" "${fruits[@]}"

fruits=(Apple "Desert fig" Plum)
printf "+ %s\n" "${fruits[*]}"
printf "| %s\n" "${fruits[@]}"

# 数组切片
echo ${fruits[@]:0:2}

# 添加元素
fruits=(Orange "${fruits[@]}" Banana Cherry)
echo ${fruits[@]} # Orange Apple Desert fig Plum Banana Cherry

# 删除元素
unset fruits[0]
echo ${fruits[@]} # Apple Desert fig Plum Banana Cherry
echo ${fruits[0]} # ""
echo ${fruits[1]} # Apple

