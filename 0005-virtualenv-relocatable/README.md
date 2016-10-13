## Test virtualenv --relocatable

Run `make` to:

* Create a virtualenv and enter into it.
* Install the Python package `myproject` into the virtualenv.
* Make the virtualenv relocatable.
* Move the virtualenv to another directory.
* Try to use `myproject`.


#### Expected result

Moving a virtualenv from a directory to another should be painless.

This is a useful feature in the case you need to build a virtualenv on a
server, let's say with Jenkins, and tar/unpack this virtualenv to another path
on a production server.


#### Actual result

Like stated in the
[documentation](https://virtualenv.pypa.io/en/stable/userguide/#making-environments-relocatable),
`virtualenv --relocatable` is an experimental feature and doesn't work pretty
well, mainly because the files in the virtualenv contain a lot of absolute
paths.

To make a virtualenv relocatable:

* You need to call `virtualenv --relocatable` after every package installation.
* Activation scripts (`<venv>/bin/activate` for instance) aren't updated, so
  they won't work anymore.
* Consequently, you need to use `<venv>/bin/python` or to edit your $PATH
  manually.
