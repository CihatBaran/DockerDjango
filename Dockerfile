# 1- Select base image that you want to override
FROM python:3.9-alpine
# direct to terminal unbuffered mode active
ENV PYTHONUNBUFFERED=1

# 2- Specify working directory
WORKDIR "/django"

# 3- Copy this and then install all the dependencies
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

# 4- Copy everything else
COPY ./ ./
