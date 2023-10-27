# Python Build
# ============
#
# That's all there is to it.

ARG python_version=3.10
FROM python:${python_version}-alpine
RUN pip3 install --quiet --upgrade setuptools pip wheel build
ENTRYPOINT ["python3", "-m", "build"]
