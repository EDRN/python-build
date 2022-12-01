# Python Build
# ============
#
# That's all there is to it.

FROM python:3.10-alpine
RUN pip3 install --quiet --upgrade setuptools pip wheel build
ENTRYPOINT ["python3", "-m", "build"]
