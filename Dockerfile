FROM python:3.11.0rc2-slim-buster

WORKDIR /streaming

# install dependecies
RUN pip install --upgrade pip
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
COPY requirements.txt .
RUN pip install -r requirements.txt

#copying data
COPY . .

#adding demo videos
ADD https://drive.google.com/uc?id=1w-O2vcxPYGpMdMs-TXR4WQyoZd6kfFkv&export=download ./media/movies
ADD https://drive.google.com/uc?id=1AL0SFsMTX7omTzdMJM98PqDrA3bCwik3&export=download ./media/movies
ADD https://drive.google.com/uc?id=1iED88w_lVRcyLDiBZ3c63eNnpcl26nAd&export=download ./media/movies
ADD https://drive.google.com/uc?id=1-5EGZYsOYLrQeka1Equ8_He1oV54ziOm&export=download ./media/movies
ADD https://drive.google.com/uc?id=1hjssLyZOih7Mh_IaBd7ijNJ5dTR1EGrT&export=download ./media/movies

#run with
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]
