FROM heroku/miniconda:3

ADD ./conda-requirements.txt /tmp/conda-requirements.txt
ADD ./requirements.txt /tmp/requirements.txt

RUN conda install --yes --file /tmp/conda-requirements.txt
RUN pip install -qr /tmp/requirements.txt

ADD ./app.py /opt/app.py
ADD ./forecaster /opt/forecaster/
ADD ./static /opt/static/
WORKDIR /opt

CMD gunicorn --bind 0.0.0.0:$PORT app:app