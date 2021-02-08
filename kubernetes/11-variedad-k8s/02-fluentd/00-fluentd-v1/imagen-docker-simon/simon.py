from flask import Flask
from flask import request
import datetime
import sys
app = Flask(__name__)
@app.route('/')
def hello():
    return "Simon says its {0}".format(datetime.datetime.now())
@app.route('/echo')
def echo():
    return 'Simon says {0}'.format(request.args.get('m'))
    sys.stderr.write('Error, echo with no symbols!')
    sys.stdout.flush()
    return "Simon says, but you don't"
if __name__ == '__main__':
    app.run(host='0.0.0.0', port='3001')
