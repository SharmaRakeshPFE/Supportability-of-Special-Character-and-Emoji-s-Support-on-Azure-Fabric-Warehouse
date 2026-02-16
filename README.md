
# Supportability-of-Special-Character-and-Emoji-s-Support-on-Azure-Fabric-Warehouse
This document explains how special characters and emojis behave inside Fabric Warehouse

Modern applications generate data that frequently includes multilingual characters, Unicode symbols, and emojis—especially in customer feedback, chat logs, social comments, and operational notes.
Microsoft Fabric Warehouse fully supports Unicode through its UTF‑8 collation model, but understanding how characters are stored, validated, and processed is essential to ensure predictable ingestion and avoid truncation or encoding issues.

Fabric Warehouse uses UTF‑8‑based collations for all VARCHAR columns. This is important because:

UTF‑8 is a variable‑length encoding, meaning each character can consume between 1–4 bytes.
ASCII characters = 1 byte
Accented characters like é, ü, ñ = 2 bytes
Asian languages (Chinese, Japanese, Korean) = 2–3 bytes
Emoji (🙂, 🚀, ❤️, 🔥) = 4 bytes


