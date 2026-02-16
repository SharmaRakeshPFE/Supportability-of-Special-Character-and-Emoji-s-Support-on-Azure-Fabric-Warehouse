

--##########################################################################################################################################################################
--Validating and Loading Emoji's and Special Character to Warehouse
--##########################################################################################################################################################################
SELECT TOP 20 *
FROM OPENROWSET(
    BULK 'abfss://fae26014-f380-4568-b8cb-e881dff063d5@msit-onelake.dfs.fabric.microsoft.com/91bf9d51-39f0-449f-986a-5fa5e2eaf097/Files/SpecialCharSet/CrSpCharFromSpk_1.parquet'
) AS r;

COPY INTO dbo.[CustomerFeedbackFromParquet]
FROM 'abfss://fae26014-f380-4568-b8cb-e881dff063d5@msit-onelake.dfs.fabric.microsoft.com/91bf9d51-39f0-449f-986a-5fa5e2eaf097/Files/SpecialCharSet/CrSpCharFromSpk_1.parquet'
WITH
(   FILE_TYPE = 'Parquet' );

SELECT * from CustomerFeedbackFromParquet


--##########################################################################################################################################################################
--Dorect Insert into Warehouse Emoji's and Special Character to Warehouse
--##########################################################################################################################################################################

CREATE TABLE CustomerFeedbackValidation (
    Comment VARCHAR(8000)
)

INSERT INTO CustomerFeedbackValidation VALUES ('👨‍👩‍👧‍👦 👩🏽‍💻 🏳️‍🌈 🏴‍☠️ 👩‍❤️‍💋‍👨 🧑🏾‍🤝‍🧑🏻 🇮🇳 🇺🇸 1️⃣ *️⃣ #️⃣ ❤️ ☢️ ✈️ ☀ ☁ ☂ ☃ ☄ ★ ☆ ☇ ☈ ☉ ☊ ☋ ☌ ☍ ☎ ☏ ☐ ☑ ☒ ☓ ☔ ☕ ☖ ☗ ☘ ☙ ☚ ☛ ☜ ☝ ☞ ☟ ☠ ☡ ☢ ☣ ☤ ☥ ☦ ☧ ☨ ☩ ☪ ☫ ☬ ☭ ☮ ☯ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ ☸ ☹ ☺ ☻ ☼ ☽ ☾ ☿ ♀ ♁ ♂ ♃ ♄ ♅ ♆ ♇ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♡ ♢ ♣ ♤ ♥ ♦ ♧ ♨ ♩');
INSERT INTO CustomerFeedbackValidation VALUES ('♪ ♫ ♬ ♭ ♮ ♯ ♰ ♱ ♲ ♳ ♴ ♵ ♶ ♷ ♸ ♹ ♺ ♻ ♼ ♽ ♾ ♿ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ⚆ ⚇ ⚈ ⚉ ⚊ ⚋ ⚌ ⚍ ⚎ ⚏ ⚐ ⚑ ⚒ ⚓ ⚔ ⚕ ⚖ ⚗ ⚘ ⚙ ⚚ ⚛ ⚜ ⚝ ⚞ ⚟ ⚠ ⚡ ⚢ ⚣ ⚤ ⚥ ⚦ ⚧ ⚨ ⚩ ⚪ ⚫ ⚬ ⚭ ⚮ ⚯ ⚰ ⚱ ⚲ ⚳ ⚴ ⚵ ⚶ ⚷ ⚸ ⚹ ⚺ ⚻ ⚼ ⚽ ⚾ ⚿ ⛀ ⛁ ⛂ ⛃ ⛄ ⛅ ⛆ ⛇ ⛈ ⛉ ⛊ ⛋ ⛌ ⛍ ⛎ ⛏ ⛐ ⛑ ⛒ ⛓ ⛔ ⛕ ⛖ ⛗ ⛘ ⛙ ⛚ ⛛ ⛜ ⛝ ⛞ ⛟ ⛠ ⛡');
INSERT INTO CustomerFeedbackValidation VALUES ('⛢ ⛣ ⛤ ⛥ ⛦ ⛧ ⛨ ⛩ ⛪ ⛫ ⛬ ⛭ ⛮ ⛯ ⛰ ⛱ ⛲ ⛳ ⛴ ⛵ ⛶ ⛷ ⛸ ⛹ ⛺ ⛻ ⛼ ⛽ ⛾ ⛿ ✀ ✁ ✂ ✃ ✄ ✅ ✆ ✇ ✈ ✉ ✊ ✋ ✌ ✍ ✎ ✏ ✐ ✑ ✒ ✓ ✔ ✕ ✖ ✗ ✘ ✙ ✚ ✛ ✜ ✝ ✞ ✟ ✠ ✡ ✢ ✣ ✤ ✥ ✦ ✧ ✨ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✱ ✲ ✳ ✴ ✵ ✶ ✷ ✸ ✹ ✺ ✻ ✼ ✽ ✾ ✿ ❀ ❁ ❂ ❃ ❄ ❅ ❆ ❇ ❈ ❉ ❊ ❋ ❌ ❍ ❎ ❏ ❐ ❑ ❒ ❓ ❔ ❕ ❖ ❗ ❘ ❙');
INSERT INTO CustomerFeedbackValidation VALUES ('❚ ❛ ❜ ❝ ❞ ❟ ❠ ❡ ❢ ❣ ❤ ❥ ❦ ❧ ❨ ❩ ❪ ❫ ❬ ❭ ❮ ❯ ❰ ❱ ❲ ❳ ❴ ❵ ❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿ ➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓ ➔ ➕ ➖ ➗ ➘ ➙ ➚ ➛ ➜ ➝ ➞ ➟ ➠ ➡ ➢ ➣ ➤ ➥ ➦ ➧ ➨ ➩ ➪ ➫ ➬ ➭ ➮ ➯ ➰ ➱ ➲ ➳ ➴ ➵ ➶ ➷ ➸ ➹ ➺ ➻ ➼ ➽ ➾ ➿ 🌀 🌁 🌂 🌃 🌄 🌅 🌆 🌇 🌈 🌉 🌊 🌋 🌌 🌍 🌎 🌏 🌐 🌑');
INSERT INTO CustomerFeedbackValidation VALUES ('🌒 🌓 🌔 🌕 🌖 🌗 🌘 🌙 🌚 🌛 🌜 🌝 🌞 🌟 🌠 🌡 🌢 🌣 🌤 🌥 🌦 🌧 🌨 🌩 🌪 🌫 🌬 🌭 🌮 🌯 🌰 🌱 🌲 🌳 🌴 🌵 🌶 🌷 🌸 🌹 🌺 🌻 🌼 🌽 🌾 🌿 🍀 🍁 🍂 🍃 🍄 🍅 🍆 🍇 🍈 🍉 🍊 🍋 🍌 🍍 🍎 🍏 🍐 🍑 🍒 🍓 🍔 🍕 🍖 🍗 🍘 🍙 🍚 🍛 🍜 🍝 🍞 🍟 🍠 🍡 🍢 🍣 🍤 🍥 🍦 🍧 🍨 🍩 🍪 🍫 🍬 🍭 🍮 🍯 🍰 🍱 🍲 🍳 🍴 🍵 🍶 🍷 🍸 🍹 🍺 🍻 🍼 🍽 🍾 🍿 🎀 🎁 🎂 🎃 🎄 🎅 🎆 🎇 🎈 🎉');
INSERT INTO CustomerFeedbackValidation VALUES ('🎊 🎋 🎌 🎍 🎎 🎏 🎐 🎑 🎒 🎓 🎔 🎕 🎖 🎗 🎘 🎙 🎚 🎛 🎜 🎝 🎞 🎟 🎠 🎡 🎢 🎣 🎤 🎥 🎦 🎧 🎨 🎩 🎪 🎫 🎬 🎭 🎮 🎯 🎰 🎱 🎲 🎳 🎴 🎵 🎶 🎷 🎸 🎹 🎺 🎻 🎼 🎽 🎾 🎿 🏀 🏁 🏂 🏃 🏄 🏅 🏆 🏇 🏈 🏉 🏊 🏋 🏌 🏍 🏎 🏏 🏐 🏑 🏒 🏓 🏔 🏕 🏖 🏗 🏘 🏙 🏚 🏛 🏜 🏝 🏞 🏟 🏠 🏡 🏢 🏣 🏤 🏥 🏦 🏧 🏨 🏩 🏪 🏫 🏬 🏭 🏮 🏯 🏰 🏱 🏲 🏳 🏴 🏵 🏶 🏷 🏸 🏹 🏺 🏻 🏼 🏽 🏾 🏿 🐀 🐁');
INSERT INTO CustomerFeedbackValidation VALUES ('🐂 🐃 🐄 🐅 🐆 🐇 🐈 🐉 🐊 🐋 🐌 🐍 🐎 🐏 🐐 🐑 🐒 🐓 🐔 🐕 🐖 🐗 🐘 🐙 🐚 🐛 🐜 🐝 🐞 🐟 🐠 🐡 🐢 🐣 🐤 🐥 🐦 🐧 🐨 🐩 🐪 🐫 🐬 🐭 🐮 🐯 🐰 🐱 🐲 🐳 🐴 🐵 🐶 🐷 🐸 🐹 🐺 🐻 🐼 🐽 🐾 🐿 👀 👁 👂 👃 👄 👅 👆 👇 👈 👉 👊 👋 👌 👍 👎 👏 👐 👑 👒 👓 👔 👕 👖 👗 👘 👙 👚 👛 👜 👝 👞 👟 👠 👡 👢 👣 👤 👥 👦 👧 👨 👩 👪 👫 👬 👭 👮 👯 👰 👱 👲 👳 👴 👵 👶 👷 👸 👹');
INSERT INTO CustomerFeedbackValidation VALUES ('👺 👻 👼 👽 👾 👿 💀 💁 💂 💃 💄 💅 💆 💇 💈 💉 💊 💋 💌 💍 💎 💏 💐 💑 💒 💓 💔 💕 💖 💗 💘 💙 💚 💛 💜 💝 💞 💟 💠 💡 💢 💣 💤 💥 💦 💧 💨 💩 💪 💫 💬 💭 💮 💯 💰 💱 💲 💳 💴 💵 💶 💷 💸 💹 💺 💻 💼 💽 💾 💿 📀 📁 📂 📃 📄 📅 📆 📇 📈 📉 📊 📋 📌 📍 📎 📏 📐 📑 📒 📓 📔 📕 📖 📗 📘 📙 📚 📛 📜 📝 📞 📟 📠 📡 📢 📣 📤 📥 📦 📧 📨 📩 📪 📫 📬 📭 📮 📯 📰 📱');
INSERT INTO CustomerFeedbackValidation VALUES ('📲 📳 📴 📵 📶 📷 📸 📹 📺 📻 📼 📽 📾 📿 🔀 🔁 🔂 🔃 🔄 🔅 🔆 🔇 🔈 🔉 🔊 🔋 🔌 🔍 🔎 🔏 🔐 🔑 🔒 🔓 🔔 🔕 🔖 🔗 🔘 🔙 🔚 🔛 🔜 🔝 🔞 🔟 🔠 🔡 🔢 🔣 🔤 🔥 🔦 🔧 🔨 🔩 🔪 🔫 🔬 🔭 🔮 🔯 🔰 🔱 🔲 🔳 🔴 🔵 🔶 🔷 🔸 🔹 🔺 🔻 🔼 🔽 🔾 🔿 🕀 🕁 🕂 🕃 🕄 🕅 🕆 🕇 🕈 🕉 🕊 🕋 🕌 🕍 🕎 🕏 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 🕛 🕜 🕝 🕞 🕟 🕠 🕡 🕢 🕣 🕤 🕥 🕦 🕧 🕨 🕩');
INSERT INTO CustomerFeedbackValidation VALUES ('🕪 🕫 🕬 🕭 🕮 🕯 🕰 🕱 🕲 🕳 🕴 🕵 🕶 🕷 🕸 🕹 🕺 🕻 🕼 🕽 🕾 🕿 🖀 🖁 🖂 🖃 🖄 🖅 🖆 🖇 🖈 🖉 🖊 🖋 🖌 🖍 🖎 🖏 🖐 🖑 🖒 🖓 🖔 🖕 🖖 🖗 🖘 🖙 🖚 🖛 🖜 🖝 🖞 🖟 🖠 🖡 🖢 🖣 🖤 🖥 🖦 🖧 🖨 🖩 🖪 🖫 🖬 🖭 🖮 🖯 🖰 🖱 🖲 🖳 🖴 🖵 🖶 🖷 🖸 🖹 🖺 🖻 🖼 🖽 🖾 🖿 🗀 🗁 🗂 🗃 🗄 🗅 🗆 🗇 🗈 🗉 🗊 🗋 🗌 🗍 🗎 🗏 🗐 🗑 🗒 🗓 🗔 🗕 🗖 🗗 🗘 🗙 🗚 🗛 🗜 🗝 🗞 🗟 🗠 🗡');
INSERT INTO CustomerFeedbackValidation VALUES ('🗢 🗣 🗤 🗥 🗦 🗧 🗨 🗩 🗪 🗫 🗬 🗭 🗮 🗯 🗰 🗱 🗲 🗳 🗴 🗵 🗶 🗷 🗸 🗹 🗺 🗻 🗼 🗽 🗾 🗿 😀 😁 😂 😃 😄 😅 😆 😇 😈 😉 😊 😋 😌 😍 😎 😏 😐 😑 😒 😓 😔 😕 😖 😗 😘 😙 😚 😛 😜 😝 😞 😟 😠 😡 😢 😣 😤 😥 😦 😧 😨 😩 😪 😫 😬 😭 😮 😯 😰 😱 😲 😳 😴 😵 😶 😷 😸 😹 😺 😻 😼 😽 😾 😿 🙀 🙁 🙂 🙃 🙄 🙅 🙆 🙇 🙈 🙉 🙊 🙋 🙌 🙍 🙎 🙏 🚀 🚁 🚂 🚃 🚄 🚅 🚆 🚇 🚈 🚉');
INSERT INTO CustomerFeedbackValidation VALUES ('🚊 🚋 🚌 🚍 🚎 🚏 🚐 🚑 🚒 🚓 🚔 🚕 🚖 🚗 🚘 🚙 🚚 🚛 🚜 🚝 🚞 🚟 🚠 🚡 🚢 🚣 🚤 🚥 🚦 🚧 🚨 🚩 🚪 🚫 🚬 🚭 🚮 🚯 🚰 🚱 🚲 🚳 🚴 🚵 🚶 🚷 🚸 🚹 🚺 🚻 🚼 🚽 🚾 🚿 🛀 🛁 🛂 🛃 🛄 🛅 🛆 🛇 🛈 🛉 🛊 🛋 🛌 🛍 🛎 🛏 🛐 🛑 🛒 🛓 🛔 🛕 🛖 🛗 🛜 🛝 🛞 🛟 🛠 🛡 🛢 🛣 🛤 🛥 🛦 🛧 🛨 🛩 🛪 🛫 🛬 🛰 🛱 🛲 🛳 🛴 🛵 🛶 🛷 🛸 🛹 🛺 🛻 🛼 🜀 🜁 🜂 🜃 🜄 🜅 🜆 🜇 🜈 🜉 🜊 🜋');
INSERT INTO CustomerFeedbackValidation VALUES ('🜌 🜍 🜎 🜏 🜐 🜑 🜒 🜓 🜔 🜕 🜖 🜗 🜘 🜙 🜚 🜛 🜜 🜝 🜞 🜟 🜠 🜡 🜢 🜣 🜤 🜥 🜦 🜧 🜨 🜩 🜪 🜫 🜬 🜭 🜮 🜯 🜰 🜱 🜲 🜳 🜴 🜵 🜶 🜷 🜸 🜹 🜺 🜻 🜼 🜽 🜾 🜿 🝀 🝁 🝂 🝃 🝄 🝅 🝆 🝇 🝈 🝉 🝊 🝋 🝌 🝍 🝎 🝏 🝐 🝑 🝒 🝓 🝔 🝕 🝖 🝗 🝘 🝙 🝚 🝛 🝜 🝝 🝞 🝟 🝠 🝡 🝢 🝣 🝤 🝥 🝦 🝧 🝨 🝩 🝪 🝫 🝬 🝭 🝮 🝯 🝰 🝱 🝲 🝳 🝴 🝵 🝶 🝻 🝼 🝽 🝾 🝿 🞀 🞁 🞂 🞃 🞄 🞅 🞆 🞇');
INSERT INTO CustomerFeedbackValidation VALUES ('🞈 🞉 🞊 🞋 🞌 🞍 🞎 🞏 🞐 🞑 🞒 🞓 🞔 🞕 🞖 🞗 🞘 🞙 🞚 🞛 🞜 🞝 🞞 🞟 🞠 🞡 🞢 🞣 🞤 🞥 🞦 🞧 🞨 🞩 🞪 🞫 🞬 🞭 🞮 🞯 🞰 🞱 🞲 🞳 🞴 🞵 🞶 🞷 🞸 🞹 🞺 🞻 🞼 🞽 🞾 🞿 🟀 🟁 🟂 🟃 🟄 🟅 🟆 🟇 🟈 🟉 🟊 🟋 🟌 🟍 🟎 🟏 🟐 🟑 🟒 🟓 🟔 🟕 🟖 🟗 🟘 🟙 🟠 🟡 🟢 🟣 🟤 🟥 🟦 🟧 🟨 🟩 🟪 🟫 🟰 🠀 🠁 🠂 🠃 🠄 🠅 🠆 🠇 🠈 🠉 🠊 🠋 🠐 🠑 🠒 🠓 🠔 🠕 🠖 🠗 🠘 🠙 🠚 🠛 🠜');
INSERT INTO CustomerFeedbackValidation VALUES ('🠝 🠞 🠟 🠠 🠡 🠢 🠣 🠤 🠥 🠦 🠧 🠨 🠩 🠪 🠫 🠬 🠭 🠮 🠯 🠰 🠱 🠲 🠳 🠴 🠵 🠶 🠷 🠸 🠹 🠺 🠻 🠼 🠽 🠾 🠿 🡀 🡁 🡂 🡃 🡄 🡅 🡆 🡇 🡐 🡑 🡒 🡓 🡔 🡕 🡖 🡗 🡘 🡙 🡠 🡡 🡢 🡣 🡤 🡥 🡦 🡧 🡨 🡩 🡪 🡫 🡬 🡭 🡮 🡯 🡰 🡱 🡲 🡳 🡴 🡵 🡶 🡷 🡸 🡹 🡺 🡻 🡼 🡽 🡾 🡿 🢀 🢁 🢂 🢃 🢄 🢅 🢆 🢇 🢐 🢑 🢒 🢓 🢔 🢕 🢖 🢗 🢘 🢙 🢚 🢛 🢜 🢝 🢞 🢟 🢠 🢡 🢢 🢣 🢤 🢥 🢦 🢧 🢨 🢩 🢪');
INSERT INTO CustomerFeedbackValidation VALUES ('🢫 🢬 🢭 🢰 🢱 🤀 🤁 🤂 🤃 🤄 🤅 🤆 🤇 🤈 🤉 🤊 🤋 🤌 🤍 🤎 🤏 🤐 🤑 🤒 🤓 🤔 🤕 🤖 🤗 🤘 🤙 🤚 🤛 🤜 🤝 🤞 🤟 🤠 🤡 🤢 🤣 🤤 🤥 🤦 🤧 🤨 🤩 🤪 🤫 🤬 🤭 🤮 🤯 🤰 🤱 🤲 🤳 🤴 🤵 🤶 🤷 🤸 🤹 🤺 🤻 🤼 🤽 🤾 🤿 🥀 🥁 🥂 🥃 🥄 🥅 🥆 🥇 🥈 🥉 🥊 🥋 🥌 🥍 🥎 🥏 🥐 🥑 🥒 🥓 🥔 🥕 🥖 🥗 🥘 🥙 🥚 🥛 🥜 🥝 🥞 🥟 🥠 🥡 🥢 🥣 🥤 🥥 🥦 🥧 🥨 🥩 🥪 🥫 🥬 🥭 🥮 🥯 🥰 🥱 🥲');
INSERT INTO CustomerFeedbackValidation VALUES ('🥳 🥴 🥵 🥶 🥷 🥸 🥹 🥺 🥻 🥼 🥽 🥾 🥿 🦀 🦁 🦂 🦃 🦄 🦅 🦆 🦇 🦈 🦉 🦊 🦋 🦌 🦍 🦎 🦏 🦐 🦑 🦒 🦓 🦔 🦕 🦖 🦗 🦘 🦙 🦚 🦛 🦜 🦝 🦞 🦟 🦠 🦡 🦢 🦣 🦤 🦥 🦦 🦧 🦨 🦩 🦪 🦫 🦬 🦭 🦮 🦯 🦰 🦱 🦲 🦳 🦴 🦵 🦶 🦷 🦸 🦹 🦺 🦻 🦼 🦽 🦾 🦿 🧀 🧁 🧂 🧃 🧄 🧅 🧆 🧇 🧈 🧉 🧊 🧋 🧌 🧍 🧎 🧏 🧐 🧑 🧒 🧓 🧔 🧕 🧖 🧗 🧘 🧙 🧚 🧛 🧜 🧝 🧞 🧟 🧠 🧡 🧢 🧣 🧤 🧥 🧦 🧧 🧨 🧩 🧪');
INSERT INTO CustomerFeedbackValidation VALUES ('🧫 🧬 🧭 🧮 🧯 🧰 🧱 🧲 🧳 🧴 🧵 🧶 🧷 🧸 🧹 🧺 🧻 🧼 🧽 🧾 🧿 🨀 🨁 🨂 🨃 🨄 🨅 🨆 🨇 🨈 🨉 🨊 🨋 🨌 🨍 🨎 🨏 🨐 🨑 🨒 🨓 🨔 🨕 🨖 🨗 🨘 🨙 🨚 🨛 🨜 🨝 🨞 🨟 🨠 🨡 🨢 🨣 🨤 🨥 🨦 🨧 🨨 🨩 🨪 🨫 🨬 🨭 🨮 🨯 🨰 🨱 🨲 🨳 🨴 🨵 🨶 🨷 🨸 🨹 🨺 🨻 🨼 🨽 🨾 🨿 🩀 🩁 🩂 🩃 🩄 🩅 🩆 🩇 🩈 🩉 🩊 🩋 🩌 🩍 🩎 🩏 🩐 🩑 🩒 🩓 🩠 🩡 🩢 🩣 🩤 🩥 🩦 🩧 🩨 🩩 🩪 🩫 🩬 🩭 🩰');
INSERT INTO CustomerFeedbackValidation VALUES ('🩱 🩲 🩳 🩴 🩵 🩶 🩷 🩸 🩹 🩺 🩻 🩼 🪀 🪁 🪂 🪃 🪄 🪅 🪆 🪇 🪈 🪐 🪑 🪒 🪓 🪔 🪕 🪖 🪗 🪘 🪙 🪚 🪛 🪜 🪝 🪞 🪟 🪠 🪡 🪢 🪣 🪤 🪥 🪦 🪧 🪨 🪩 🪪 🪫 🪬 🪭 🪮 🪯 🪰 🪱 🪲 🪳 🪴 🪵 🪶 🪷 🪸 🪹 🪺 🪻 🪼 🪽 🪿 🫀 🫁 🫂 🫃 🫄 🫅 🫎 🫏 🫐 🫑 🫒 🫓 🫔 🫕 🫖 🫗 🫘 🫙 🫚 🫛 🫠 🫡 🫢 🫣 🫤 🫥 🫦 🫧 🫨 🫰 🫱 🫲 🫳 🫴 🫵 🫶 🫷 🫸');

select * from CustomerFeedbackValidation


SELECT TOP 10
  Comment,
  LEN(Comment)        AS char_len,
  DATALENGTH(Comment) AS byte_len
FROM CustomerFeedbackValidation
ORDER BY byte_len DESC;


SELECT * FROM [SpecialCharTest]
WHERE Commnets LIKE '%ã%'






