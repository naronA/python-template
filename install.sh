#!/bin/sh
set -Ceu

if [ ! -e "src" ]; then
  mkdir src
fi
curl -sSfL -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/vscode/settings.json --create-dirs -o .vscode/settings.json
curl -sSfL -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.env.workspace -o .env.workspace
curl -sSfL -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.envrc -o .envrc
curl -sSfL -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.gitignore -o .gitignore
curl -sSfL -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/dot.pre-commit-config.yaml -o .pre-commit-config.yaml
curl -sSfLO -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/setup.cfg
curl -sSfLO -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/pyrightconfig.json
curl -sSfLO -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/requirements.txt
curl -sSfLO -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/editorconfig
curl -sSfLO -H "Cache-Control: no-cache" https://raw.githubusercontent.com/tMinamiii/python-template/master/pyproject.toml
python -m venv .venv
poetry config --local virtualenvs.in-project true
poetry add -D $(cat requirements.txt)
