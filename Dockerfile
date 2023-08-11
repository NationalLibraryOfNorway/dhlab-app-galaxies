FROM python:3.11.4-slim-bookworm
WORKDIR /app/
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY st_agraph.py gnl.py DHlab_logo_web_en_black.png /app/
EXPOSE 8501
CMD streamlit run st_agraph.py --browser.gatherUsageStats=False
