import os
from forecaster import create_app

PROPHET_URL = os.environ['PROPHET_URL']
SECRET_KEY = os.environ['SECRET_KEY']
BOKEH_VERSION = os.environ.get('BOKEH_VERSION_NUMBER', '7')

app = create_app(PROPHET_URL, SECRET_KEY, BOKEH_VERSION)

if __name__ == '__main__':
  app.run(port=33507)
