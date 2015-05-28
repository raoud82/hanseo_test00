#!/bin/sh 

var="'(]\\{}\$\""
echo $var        # '(]\{}$"
echo "$var"      # '(]\{}$"     차이가 없죠?

echo

IFS='\'
echo $var        # '(] {}$"     \ 가 빈 칸으로 바뀌었네요.
echo "$var"      # '(]\{}$"

variable1="4개의 낱말로 이루어진 변수"
echo COMMAND 이것은 $variable1 입니다.    # COMMAND는 6개의 인자를 가지고 실행됩니다.
# "이것은" "4개의" "낱말로" "이루어진" "변수" "입니다."

echo COMMAND "이것은 $variable1 입니다."  # COMMAND는 1개의 인자를 가지고 실행됩니다.
# "이것은 4개의 낱말로 이루어진 변수 입니다."


variable2=""    # 비어 있습니다.
echo COMMAND $variable2 $variable2 $variable2        # COMMAND는 인자 없이 실행됩니다.
echo COMMAND "$variable2" "$variable2" "$variable2"  # COMMAND는 3개의 빈 인자를 가지고 실행됩니다.
echo COMMAND "$variable2 $variable2 $variable2"      # COMMAND는 2개의 빈칸을 가진 하나의 인자를 가지고 실행됩니다.

some=test1
echo $some
some="test1 test2"
echo $some
