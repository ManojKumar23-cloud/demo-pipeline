from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    print("This is My Demo lab website")  # This will print to the terminal
    return 'Hello, CI/CD Testing!'  #TEST

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
