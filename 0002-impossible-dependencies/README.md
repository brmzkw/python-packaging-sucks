Demonstrate why Python dependencies management is a failure
===========================================================

Run `make` to:

1. Push `b-proj` on (a local) Pypi. `b-proj` depends on `requests <=2.5.0`.
2. Build and enter into a virtualenv.
3. Install `a-proj`, which depends on `requests` (any version) and `b-proj`.


#### Expected behaviour

Install `requests <=2.5.0`, `a-proj` and `b-proj`.

Since `a-proj` doesn't require a specific version of `requests`, installing
`requests ==2.5.0` should be valid.

If for any reason it is impossible, the installation should fail and the Python
modules `aproj` and `bproj` should not be importable.


#### Actual behaviour

During step 3., an error is displayed but the Python modules `aproj` and
`bproj` are still installed and importable.

When running the [`aproj`](a-proj/setup.py) and [`bproj`](b-proj/setup.py)
entrypoints, `pkg_resources.ContextualVersionConflict` and
`pkg_resources.DistributionNotFound` are raised.
