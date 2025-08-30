#!/usr/bin/python
from html.parser import HTMLParser
from pathlib import Path

"""
すべてのページが index.html として生成されているか検査するスクリプト

foobar/baz/index.html
-> /foobar/baz/ と /foobar/baz の双方がルーティングできる

foobar/baz.html
-> /foobar/baz/ がルーティングできない
"""


class Parser(HTMLParser):
    """
    <meta http-equiv="refresh"> を含むファイルを検査の対象から除外する
    """

    def __init__(self, *, convert_charrefs: bool = True) -> None:
        super().__init__(convert_charrefs=convert_charrefs)
        self.is_redirect = False

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if self.is_redirect:
            return

        if tag != "meta":
            return

        for attr_name, attr_value in attrs:
            if attr_name == "http-equiv" and attr_value == "refresh":
                self.is_redirect = True
                break


def is_redirect(path: str) -> bool:
    with open(path) as fp:
        content = fp.read()

    parser = Parser()
    parser.feed(content)
    parser.close()

    return parser.is_redirect


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
            if is_redirect(path):
                continue

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
