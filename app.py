from flask import Flask
from pymongo import MongoClient

app = Flask(__name__)

client = MongoClient("mongodb://mongo:27017/")
db = client.test

@app.route('/')
def index():
    return f"Hello from MongoDB! There are {db.posts.count_documents({})} posts in the database."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
