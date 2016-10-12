## easy-install is not so easy

Run `make` to:

1. Push a [wheel](http://pythonwheels.com/) distribution of `mylib` on (a
   local) Pypi.
2. Run unittests with `python setup.py nosetests` in `myproject`, which depends
   on `mylib`.


#### Expected result

Install the required dependency `mylib` and run unittests.


#### Actual result

`python setup.py nosetests` use `easy_install` to install the dependency and
not `pip`. `easy_install` doesn't handle wheel packages.

A cryptic error message is displayed:

```
No local packages or download links found for mylib
error: Could not find suitable distribution for Requirement.parse('mylib')
```

The link exists, but easy_install can't handle it.
