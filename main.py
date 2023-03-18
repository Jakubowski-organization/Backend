
from flask import Flask, render_template, request

main = Flask(__name__)


@main.route("/")
def hello():
   
    return render_template("hello.html")


@main.route("/hello", methods=["GET", "POST"])
def greet():
   
    if request.method == "POST":
        name = request.form["name"]
        greeting = "Hello " + name
        return render_template("respond.html", greeting=greeting)
    return render_template("hello.html")


if __name__ == "__main__":
    main.run(debug=True)