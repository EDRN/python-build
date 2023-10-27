# 👷‍♀️ Python Build

This is a Python image that includes the [build](https://pypi.org/project/build/) package "built" right in.

You can use it to make Python packages that rely on Python 3.X features when you don't have a Python 3.X nearby or system administrators who are reluctant to upgrade your Python installation, where `.X` is some version you don't have access to.


## 🧱 Using this Image

Suppose you have a source package in `src/my.package` whose setup metadata say it's version 1.0. Then do:

    docker container run --rm --volume ${PWD}:/mnt edrndocker/python-build:3.10 --outdir /mnt/dist /mnt/src/my.package

You'll then have `dist/my.package-1.0-py3-none-any.whl` and `dist/my.package-1.0.tar.gz`.


## 🤓 Maintaining this Image

To build it:

    docker image build --build-arg python_version=3.10 --tag python-build:3.10 .

Want 3.11? Just substitute `3.10` with `3.11` above.

Note that there's a GitHub Actions workflow that automatically does this for Python 3.9–3.12 (as of this writing) and published to `edrndocker` on the Docker Hub.


## 📃 License

The project is licensed under the [Apache version 2](LICENSE.md) license.
