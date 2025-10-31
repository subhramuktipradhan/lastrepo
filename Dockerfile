#pull base image
FROM python:3.14-slim
#install streamlit
RUN pip install streamlit
#set working directory
WORKDIR /var
#copy file
COPY etl.py .
#expose streamlit
EXPOSE 8501
# run streamlit app
CMD ["streamlit", "run", "etl.py"]