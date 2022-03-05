"""
Super basic Flask app
"""
import logging
from flask import Flask
app = Flask(__name__)
app.config['PROPAGATE_EXCEPTIONS'] = True

# Set up logging
format="%(asctime)s - %(levelname)s - %(name)s - %(message)s"
log = logging.getLogger("flaskapp.py")
log.setLevel(logging.INFO)

@app.route('/')
def home():
    """
    End point we can hit just to make sure the Flask app is stood up.
    :returns: String
    """
    return "Server is running..."
if __name__ == '__main__':
  app.run(host='0.0.0.0', port=int("5000"))