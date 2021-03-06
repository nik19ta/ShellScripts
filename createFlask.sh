#!/bin/bash

echo "from flask import Flask, make_response, request

app = Flask(__name__)



@app.route('/home', methods=['POST','GET'])
def home():
    if request.method == 'GET':
        return 'Flask work'

    elif request.method == 'POST':
        response = make_response('Flask work', 200)
        response.headers['Access-Control-Allow-Origin'] = '*'
        return response


app.run(debug=True, host='0.0.0.0', port='3000')
 " > $1.py;

echo "-------------------------------"
echo "Файл $1.py создан в каталоге: `pwd` ";
echo "Для запуска сервера:";
echo "Python3 $1.py"
echo "-------------------------------"
