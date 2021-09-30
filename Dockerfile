FROM python:3
ADD helloworld.py /
RUN pip install flask
RUN pip install flask_restful
ARG HOST_PYTHON_VAR
ENV CONTAINER_PYTHON_VAR=$HOST_PYTHON_VAR
EXPOSE 31313
CMD [ "python", "./helloworld.py"]
