
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

In Microsoft Fabric, Lakehouse (Spark) strings are UTF-8 by default, so mixed-language text works out of the box, no need to choose between VARCHAR and NVARCHAR. Just make sure your ingested files are properly UTF-8 encoded. In Fabric Warehouse, treat it like Azure SQL, use a _UTF8 collation at the database or column level if it’s available in your tenant, otherwise, fall back to NVARCHAR. In Power BI, Import and Direct Lake models use Unicode and dictionary encoding, so the source type doesn’t materially affect model size. However, in DirectQuery, sorting and filtering follow the source collation, so it's critical to configure the correct Unicode or UTF-8 collation at the source.

