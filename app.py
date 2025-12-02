from flask import Flask
import socket

app = Flask(__name__)

hostname = socket.gethostname()
ip_address = socket.gethostbyname(hostname)

@app.route('/')
def hello_cloud():
    return f"Hello Cloud! Host: {hostname}, IP: {ip_address}"

@app.route('/host')
def host():
    return hostname

@app.route('/ip')
def ip():
    return ip_address

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

