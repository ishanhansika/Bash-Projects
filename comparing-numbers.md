```
#!/bin/bash

read X
read Y

if (($X<$Y))
then
    echo "X is less than Y"
    exit 0
fi
if (($X>$Y))
then    
    echo "X is greater than Y"
    exit 0
fi
if (($X==$Y))           # = lakuna dammt wada na == danna ona
then
    echo "X is equal to Y"
    exit 0
fi

```
<img width="784" height="791" alt="image" src="https://github.com/user-attachments/assets/96a3d8b1-29e4-4c66-85c5-a518be1d5569" />
