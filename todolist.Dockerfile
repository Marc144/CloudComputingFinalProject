FROM python:3
ARG api_ip
ENV TODO_API_IP=${api_ip}
RUN pip install flask
RUN pip install requests
EXPOSE 5001/tcp
COPY todolist.py .
COPY templates/index.html templates/
CMD python3 todolist.py