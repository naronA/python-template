# All in One Python Dev Env Template for VSCode

比較的モダンなPythonの開発環境をしゅっと整えてくれるツールです。
この環境でプロダクト開発し、納品までした設定なので現場レベルでも使えると思います。
VSCodeとPylanceを意識して設定していますがVim + LSPでも動きます。

## Motivation

Pythonでプロダクトの新規開発する際は、様々なLinter/Formatterを準備・設定る必要があります。
1からセットアップすると、それだけで半日・終わってしまいます。
そこで自分がかつてプロダクト開発に用いた開発環境から最低限必要な物を選んでテンプレート化しました。
Installationのコマンドを実行することで、セットアップが完了します。

## Requirements

- Python 3.9
- [Poetry](https://github.com/python-poetry/poetry)
- [direnv](https://github.com/direnv/direnv)
- [prettier](https://github.com/prettier/prettier)

## Installation

```sh
curl -sSfL https://git.io/Ju0Rv | sh
```

## Default Modules

```text
black
flake8
ipython
isort
jupyterlab
mypy
pre-commit
pydocstyle
pytest
pytest-cov
```

## Remarks

mypy, flake8, pydocstyleの設定はお好みで調節しましょう。`pyproject.toml`と`setup.cfg`に設定が記載されています。
個人的に鬱陶しいと感じたものをignoreしてあります。
逆にルールに徹すべきと思ったものは厳しめにチェックするようにしています。
