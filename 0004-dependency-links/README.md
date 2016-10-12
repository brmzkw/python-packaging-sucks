## --process-dependency-links is awesome, don't remove it!

Run `make` to:

1. Enter in a virtualenv.
2. Install `myproject` with its dependency links.


The `--process-dependency-links` flag of pip allows to download your
dependencies from your favourite VCS: git, hg, ...


This feature is pretty awesome. Imagine you develop `myproject` and at the same
time it's dependency `mylibrary`.

The last released version of `myproject` is 1.0.0. The last released version of
`mylibrary` is 4.3.0.

To add your new awesome feature in `myproject`, you need to update `mylibrary`.
You could first update `mylibrary`, then make the release `5.0.0`, then depend
on this new version in `myproject`.

However, it's not really practical, as you probably want to work on
`myproject` and `mylibrary` at the same time.

Also, you want any other developer who pull `myproject` to automatically
download the last VCS version of `mylibrary`, without having a complicated
installation setup.


To do so, depend to `mylibrary >=5.0.0, ==5.0.0.dev' in the setup.py of
`myproject` and add the following dependency link (assuming you're using git):

```
git+https://<github>/<user>/<repo>@<branch>#egg=mylibrary-5.0.0.dev
```

Thanks to the use of dependency links:

* If a developer runs `pip install --process-dependency-links .` and the
  verison 5.0.0 of `mylibrary` is not yet released, pip will download
  `mylibrary 5.0.0` from github.
* If the version 5.0.0 of `mylibrary` is released, the version will be
  downloaded from Pypi and the dependency link will be ignored.


### Expected result

Previous versions of pip didn't require you to put the flag
`--process-dependency-links`.

I liked this behavior, and think it should be the default.


### Actual result

A warning is shown:

```
  DEPRECATION: Dependency Links processing has been deprecated and will be removed in a future release.
```

Even though everything is working as expected, this warning is scary and
inaccurate, since the feature won't be removed — at least according to pip's
issues tracker.
