# All in One Python Dev Env Template for VSCode

[![Image from Gyazo](https://i.gyazo.com/caecaa64bc418ca27c0951769650ed53.png)](https://gyazo.com/caecaa64bc418ca27c0951769650ed53)

比較的モダンなPythonの開発環境を整えてくれるツールです。
この環境でプロダクト開発し、納品までした設定なので現場レベルでも使えると思います。
VSCodeとPylanceを意識して設定していますがVim + LSPでも動きます。

## Motivation

- Pythonでプロダクト開発する際は、Linter/Formatterを準備・設定に時間がかかる
- かつてプロダクト開発に用いた開発環境を参考にテンプレート化
- 最小限の設定を1コマンドで完了させる

## Requirements

- Python 3.9
- [Poetry](https://github.com/python-poetry/poetry)
- [direnv](https://github.com/direnv/direnv)
- [prettier](https://github.com/prettier/prettier)

## Installation

```sh
curl -sSfL https://git.io/Ju0Rv | bash
```

## Default Modules

```text
black
flake8
ipython
isort
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
