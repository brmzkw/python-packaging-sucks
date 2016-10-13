#!/bin/sh

cat<<EOF
==========================
Build virtualenv /tmp/venv
==========================
EOF
virtualenv /tmp/venv
. /tmp/venv/bin/activate


cat<<EOF
===============
Install package
===============
EOF
python setup.py install
cd /


cat<<EOF
==========================
Make /tmp/venv relocatable
==========================
EOF
virtualenv --relocatable /tmp/venv


cat<<EOF
============================
Move /tmp/venv to /tmp/venv2
============================
EOF
mv /tmp/venv /tmp/venv2


cat<<EOF
==========================================
Project is importable and entrypoint works
==========================================
EOF
/tmp/venv2/bin/python -c 'import myproject; print myproject'
/tmp/venv2/bin/myproject


cat<<EOF
==================================================================================
As stated in the documentation
(https://virtualenv.pypa.io/en/stable/userguide/#making-environments-relocatable),
"activate scripts are not currently made relocatable". Let's try to import
myproject:
==================================================================================
EOF
. /tmp/venv2/bin/activate
python -c 'import myproject; print myproject'

cat<<EOF
======================
As expected, it fails.
======================
EOF
