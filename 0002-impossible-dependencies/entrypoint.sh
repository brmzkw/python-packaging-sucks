#!/bin/sh

/run-devpi-server.sh bg
/configure-system.sh


cat<<EOF
===================================
Setup complete, push b-proj to pypi
===================================
EOF

cd /app/b-proj

python setup.py register -r devpi
python setup.py sdist upload -v -r devpi


cat<<EOF
=======================================================
In a virtualenv, install a-proj which depends on b-proj
=======================================================
EOF

cd /app/a-proj

virtualenv /tmp/venv
. /tmp/venv/bin/activate


cat<<EOF
================================
Virtualenv built, install a-proj
================================
EOF
python setup.py install


cat<<EOF
==================================================================================
Listing dependencies: even if an error is displayed, aproj and bproj are installed
==================================================================================
EOF

pip list


cat<<EOF
=========================
They can even be imported
=========================
EOF

for x in aproj bproj; do
    echo ">>>" python -c \"import $x\"
    python -c "import $x"
done


cat<<EOF
=========================
But entrypoint don't work
=========================
EOF

aproj
bproj
