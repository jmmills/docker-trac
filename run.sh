#!/bin/bash

[ -f /.setup_trac.sh ] && /bin/bash /.setup_trac.sh

if [ ! -f /.admin_pass_set ]
then
    TRAC_PASS=$(pwgen -1 10 -s)
    _S=$(printf '=%0.s' {1..50})
    set_trac_user_password.py /trac admin ${TRAC_PASS}
    echo $_S
    echo Trac admin login: admin/${TRAC_{PASS}
    echo $_S
    touch /.admin_pass_set
fi

tracd --port 8000 /trac
