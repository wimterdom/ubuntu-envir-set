#!/usr/bin/env python3
"""
Secure Password Generator (完全隨機/可自訂長度/可選符號)
- 使用 secrets 與 SystemRandom（密碼學安全）
- 預設包含：大寫、小寫、數字；可選擇再包含符號
- 會保證每種啟用的字元類別至少各 1 個，並安全隨機打亂
用法：
  python secure_passgen.py                 # 產生 20 碼，含符號
  python secure_passgen.py -l 32           # 產生 32 碼，含符號
  python secure_passgen.py -l 16 -S        # 產生 16 碼，不含符號
"""

import argparse
import string
import secrets
import random
from typing import Iterable

LOWER = string.ascii_lowercase
UPPER = string.ascii_uppercase
DIGITS = string.digits
SYMBOLS = string.punctuation  # 若想排除易混淆字元，可自行過濾

def _secure_shuffle(chars: Iterable[str]) -> str:
    """使用 SystemRandom 安全打亂序列並回傳字串"""
    lst = list(chars)
    random.SystemRandom().shuffle(lst)
    return "".join(lst)

def generate_password(length: int = 20, use_symbols: bool = True) -> str:
    """
    產生密碼。
    - length: 密碼長度
    - use_symbols: 是否包含符號（包含時會保證至少 1 個符號）
    回傳：產生的密碼字串
    """
    if length <= 0:
        raise ValueError("length 必須為正整數")

    # 啟用的類別：固定有大小寫與數字；符號依參數決定
    categories = [LOWER, UPPER, DIGITS]
    if use_symbols:
        categories.append(SYMBOLS)

    # 至少要能容納每一類別各 1 個
    min_len = len(categories)
    if length < min_len:
        raise ValueError(f"長度過短。當前啟用 {min_len} 類字元，length 至少需為 {min_len}")

    # 先各類別保底 1 個
    password_chars = [secrets.choice(cat) for cat in categories]

    # 組合所有啟用的字元為全集
    alphabet = "".join(categories)

    # 剩餘字元從全集等機率抽取
    remaining = length - len(password_chars)
    password_chars.extend(secrets.choice(alphabet) for _ in range(remaining))

    # 安全隨機打亂
    return _secure_shuffle(password_chars)

def main():
    parser = argparse.ArgumentParser(description="Secure Password Generator (完全隨機/可自訂長度/可選符號)")
    parser.add_argument("-l", "--length", type=int, default=20, help="密碼長度，預設 20")
    parser.add_argument("-S", "--no-symbols", action="store_true", help="不包含符號（僅大小寫與數字）")
    args = parser.parse_args()

    use_symbols = not args.no_symbols
    pwd = generate_password(length=args.length, use_symbols=use_symbols)
    print(pwd)

if __name__ == "__main__":
    main()
