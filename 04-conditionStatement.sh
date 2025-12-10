#! /bin/bash
USERCKE=${id -u}
if [ $USERCKE -eq 0 ]; then
    echo "You are root user"
else
    echo "You are not root user"
fi