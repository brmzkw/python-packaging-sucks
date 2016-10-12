#!/bin/sh

/run-devpi-server.sh bg
/configure-system.sh

cat<<EOF
==================================
Setup complete, push mylib to pypi
==================================
EOF

cd /app/mylib

python setup.py register -r devpi
python setup.py bdist_wheel upload -v -r devpi


cat<<EOF
==========================
Run unittests in myproject
==========================
EOF

cd /app/myproject

python setup.py nosetests


cat<<EOF
==============================================================================
The installation failed since nosetests calls easy_install, which is unable to
install wheel packages.
==============================================================================
EOF
