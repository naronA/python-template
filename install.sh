#!/bin/sh
set -Ceu

curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/vscode/settings.json --create-dirs -o .vscode/settings.json
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.env.workspace -o .env.workspace
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.envrc -o .envrc
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.flake8 -o .flake8
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.gitignore -o .gitignore
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.isort.cfg -o .isort.cfg
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.pydocstyle -o .pydocstyle
curl -L https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.pre-commit-config.yaml -o .pre-commit-config.yaml
# curl -L -O https://raw.githubusercontent.com/tMinamiii/python-template/master/.mypy.ini
curl -L -O https://raw.githubusercontent.com/tMinamiii/python-template/master/pyrightconfig.json
curl -L -O https://raw.githubusercontent.com/tMinamiii/python-template/master/requirements.txt
curl -L -O https://raw.githubusercontent.com/tMinamiii/python-template/master/editorconfig
curl -L -O https://raw.githubusercontent.com/tMinamiii/python-template/master/pyproject.toml
python -m venv .venv
poetry config --local virtualenvs.in-project true
poetry add -D "$(cat requirements.txt)"
echo
