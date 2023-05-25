# use full python:3 container if GCC is necessary for required extensions
FROM python:3

WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./dockathon.py" ]
