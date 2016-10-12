#!/bin/sh

cat<<EOF
========================
Entering in a virtualenv
========================
EOF

virtualenv /tmp/venv
. /tmp/venv/bin/activate

cat<<EOF
=================
Install myproject
=================
EOF

cd /app/

pip install --process-dependency-links .


cat<<EOF
====================
Listing dependencies
====================
EOF

pip list
