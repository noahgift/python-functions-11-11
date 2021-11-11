install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=mylib test_mathcode.py

lint:
	pylint --disable=R,C mylib

all: install lint test