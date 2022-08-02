# 👷‍♀️ Python Build

This is a Python image that includes the [build](https://pypi.org/project/build/) package "built" right in.

You can use it to make Python packages that rely on 3.10 features when you don't have a Python 3.10 nearby or system administrators who are reluctant to upgrade your Python installation.


## 🧱 Using this Image

Suppose you have a source package in `src/my.package` whose setup metadata say it's version 1.0. Then do:

    docker container run --rm --volume ${PWD}:/mnt nutjob4life/python-build:3.10 --outdir /mnt/dist /mnt/src/my.package

You'll then have `dist/my.package-1.0-py3-none-any.whl` and `dist/my.package-1.0.tar.gz`.


## 🤓 Maintaining this Image

To build it:

    docker image build --tag python-build:3.10 .

You can then try it out locally. To publish it:

    docker image tag python-build:3.10 nutjob4life/python-build:3.10
    docker login
    docker image push nutjob4life/python-build:3.10


### 👥 Contributing

You can start by looking at the [open issues](https://github.com/EDRN/P5/issues), forking the project, and submitting a pull request. You can also [contact us by email](mailto:ic-portal@jpl.nasa.gov) with suggestions.


## 📃 License

The project is licensed under the [Apache version 2](LICENSE.md) license.
