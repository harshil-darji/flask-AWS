from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
	return "Hello World! I am Harshil Darji. Welcome to my mini-project site! :D"

if __name__ == "__main__":
	print("Program started...")
	port = int(os.environ.get("PORT", 5000))
	app.run(debug=True,host='0.0.0.0',port=port)
