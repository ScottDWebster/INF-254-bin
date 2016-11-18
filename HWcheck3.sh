#!/bin/bash

catIt (){
cat<<EOF
1-1) abababa
1-2) aaba
1-3) aabbaa
1-4) aba
1-5) aabababa
2-1) abc
2-2) ac
2-3) abbb
2-4) bbc
3-1) abc
3-2) abbbbbbbb
3-3) azc
3-4) abcbcbcbc
3-5) ac
3-6) asccbbbbcbcccc
4-1) abc
4-2) xyz
4-3) abc|xyz
5-1) battle!
5-2) Hot
5-3) green
5-4) swamping.
5-5) jump up.
5-6) undulate?
5-7) is.?
6-1) Butt=
6-2) BotHEr,=
6-3) Ample
6-4) FIdDlE7h=
6-5) Brittle =
6-6) Other.=
7-1) A. B
7-2) c! d
7-3) e f
7-4) g. H
7-5) i? J
7-6) k L
8-1) very fat man
8-2) fat tall man
8-3) very very fat ugly man
8-4) very very very tall man
EOF
}

regEx[1]='a(ab)*a'
regEx[2]='a.[bc]+'
regEx[3]='a.[bc]+'
regEx[4]='abc|xyz'
regEx[5]='[a-z]+[\.\?!]'
regEx[6]='[a-zA-Z]*[^,]='
regEx[7]='[a-z][\.\?!]\s+[A-Z]'
regEx[8]='(very )+(fat )?(tall|ugly) man'

for num in `seq 1 8`;
do
catIt | grep ^$num | egrep --color=always "${regEx[$num]}"
done
