FROM python:3-alpine
RUN mkdir /helloworld
WORKDIR /helloworld/
COPY requirements.txt /helloworld/
RUN python -m pip install --upgrade pip
RUN python -m pip --no-cache-dir install -r requirements.txt
COPY . /helloworld/
EXPOSE 5000
CMD [ "python", "/helloworld/app.py" ]