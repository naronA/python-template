#!/bin/bash
set -Ceu

PYTHON_MAJOR_VERSION=3
PYTHON_MINOR_VERSION=11


if [ ! -e "src" ]; then
  mkdir src
fi

# curl -sSfL -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/vscode/settings.json --create-dirs -o .vscode/settings.json
# curl -sSfL -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.env.workspace -o .env.workspace
# curl -sSfL -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.envrc -o .envrc
curl -sSfL -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.gitignore -o .gitignore
curl -sSfL -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.pre-commit-config.yaml -o .pre-commit-config.yaml
curl -sSfLO -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/requirements.txt
# curl -sSfLO -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/editorconfig
curl -sSfLO -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/pyproject.toml
curl -sSfLO -H "Expires: 0" -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/setup.cfg

sed -i -e "s/{MAJOR_VERSION}/${PYTHON_MAJOR_VERSION}/g" pyproject.toml
sed -i -e "s/{MINOR_VERSION}/${PYTHON_MINOR_VERSION}/g" pyproject.toml

pipenv install -d -r requirements.txt && rm requirements.txt

source .venv/bin/activate
pre-commit install
deactivate
