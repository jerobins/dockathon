# lightweight version
FROM python:3-alpine
# use full python:3 container if GCC is necessary for required extensions
# FROM python:3

# always be sure pip is latest
RUN pip install pip --upgrade

ARG UNAME=pythonuser
ARG UID=1000
ARG GID=1000

# for alpine container
RUN adduser -D -g "${UNAME}" $UNAME 

# for python:3 container
#RUN groupadd -g $GID -o $UNAME
#RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

WORKDIR /usr/src/app

# copy all files from current directory - does not copy directories
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# change our user just before running the script
USER $UNAME

ENV VAR=dockerfile

CMD [ "python", "./dockathon.py" ]

