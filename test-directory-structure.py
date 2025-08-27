#!/usr/bin/python
from pathlib import Path

"""
すべてのページが index.html として生成されているか検査するスクリプト

foobar/baz/index.html
-> /foobar/baz/ と /foobar/baz の双方がルーティングできる

foobar/baz.html
-> /foobar/baz/ がルーティングできない
"""


def main() -> int:
    allowed_names = ["index.html", "404.html"]
    errors = list[str]()

    for cwd, _dirs, files in Path("_site").walk():
        for file in files:
            if not file.endswith(".html"):
                continue

            if file in allowed_names:
                continue

            path = cwd.joinpath(file).as_posix()
            errors.append(path)

    if 0 < len(errors):
        print("index.html でない HTML ファイルが生成されました:")
        for i in errors:
            print(f"- {i}")
        return 1

    return 0


if __name__ == "__main__":
    import sys

    sys.exit(main())
