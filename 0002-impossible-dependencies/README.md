Demonstrate why Python dependencies management is a failure.

Run `make` to:

1. push "b-proj" on (a local) pypi, which depends on requests <=2.5.0.
2. install "a-proj" which depends on requests (any version) and "b-proj".

Even if an error is shown during the installation, "aproj" and "bproj" are
importable as Python modules. However, they can't be used as entryponts.
