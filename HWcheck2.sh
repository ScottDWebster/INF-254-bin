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

grepIt () {
catIt | grep ^1 | egrep --color=always 'a(ab)*a'
catIt | grep ^2 | egrep --color=always 'a.[bc]+'
catIt | grep ^3 | egrep --color=always 'a.[bc]+'
catIt | grep ^4 | egrep --color=always 'abc|xyz'
catIt | grep ^5 | egrep --color=always '[a-z]+[\.\?!]'
catIt | grep ^6 | egrep --color=always '[a-zA-Z]*[^,]='
catIt | grep ^7 | egrep --color=always '[a-z][\.\?!]\s+[A-Z]'
catIt | grep ^8 | egrep --color=always '(very )+(fat )?(tall|ugly) man'
}

grepIt
