from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/products')
def get_products():
    return jsonify([
        {"id": 101, "name": "vishnu"},
        {"id": 102, "name": "kalyan"}
    ])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
