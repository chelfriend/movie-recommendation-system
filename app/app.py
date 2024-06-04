from flask import Flask, request, jsonify
import sqlite3

app = Flask(__name__)

def get_db_connection():
    conn = sqlite3.connect('database.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/recommendations/<int:user_id>', methods=['GET'])
def get_recommendations(user_id):
    conn = get_db_connection()
    recommendations = conn.execute('YOUR_SQL_QUERY_HERE', (user_id,)).fetchall()
    conn.close()
    return jsonify([dict(row) for row in recommendations])

if __name__ == '__main__':
    app.run(debug=True)
