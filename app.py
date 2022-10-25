from flask import Flask
 
app = Flask(__name__)
 
@app.route("/hello", methods=["GET"])
def hello():
    return 'Hello Udacity. Devops here'xxxx
 
app.run(host="0.0.0.0", port=80, debug=True)