#!/bin/sh
set -Ceu

if [ ! -e "src" ]; then
  mkdir src
fi
curl -sL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/vscode/settings.json --create-dirs -o .vscode/settings.json
curl -sL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.env.workspace -o .env.workspace
curl -sL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.envrc -o .envrc
curl -sL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.gitignore -o .gitignore
curl -sL -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.pre-commit-config.yaml -o .pre-commit-config.yaml
curl -sLO -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/setup.cfg
curl -sLO -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/pyrightconfig.json
curl -sLO -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/requirements.txt
curl -sLO -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/editorconfig
curl -sLO -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/tMinamiii/python-template/master/pyproject.toml
python -m venv .venv
poetry config --local virtualenvs.in-project true
poetry add -D "$(cat requirements.txt)"
echo
