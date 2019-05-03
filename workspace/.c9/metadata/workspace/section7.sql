{"changed":true,"filter":false,"title":"section7.sql","tooltip":"/section7.sql","value":"\n-- CONCAT\nSELECT \nCONCAT(author_fname, ' ', author_lname)\nFROM books;\n\nSELECT  CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books;\n\nSELECT author_fname AS first, author_lname AS last,\nCONCAT(author_fname, ' ', author_lname) AS full\nFROM books;\n\nSELECT CONCAT_WS(' - ', title, author_fname, author_lname)\nFROM books;\n\n\n-- SUBSTRING\nSELECT SUBSTRING('Hello World', 1, 4);\n\nSELECT SUBSTRING('Hello World', -7);\n\nSELECT title FROM books;\n\nSELECT SUBSTRING(\"Where I'm Calling From: Selected Stories\", 1, 10);\n\nSELECT SUBSTRING(title, 1, 10) AS 'Short Title' FROM books;\n\nSELECT CONCAT\n(\nSUBSTRING(title, 1, 10), '...'\n)\nAS 'Short Title'\nFROM books;\n\n\n-- REPLACE\nSELECT REPLACE('Hello World', 'Hell', '%$#@');\n\nSELECT REPLACE('Hello World', 'l', '7');\n\nSELECT REPLACE('Hello World', 'o', '0');\n\nSELECT REPLACE('HellO World', 'o', '*');\n\nSELECT REPLACE('cheese bread coffee milk', ' ', ' and ');\n\nSELECT REPLACE(title, 'e', '3');\n\nSELECT\n    SUBSTRING(\n        REPLACE(title, 'e', '3'),\n        1,\n        10\n    ) AS 'THE 3s'\nFROM books;\n\n\n-- REVERSE\nSELECT REVERSE('MEOW MEOW');\n\nSELECT REVERSE(author_fname) FROM books;\n\n\nSELECT CONCAT('woof', REVERSE('woof'));\n\nSELECT CONCAT(author_fname, ' - ', REVERSE(author_fname)) FROM books;\n\n\n-- CHAR_LENGTH\nSELECT CHAR_LENGTH('Hello World');\n\nSELECT\n  CONCAT(author_lname, 'is', CHAR_LENGTH(author_lname), ' characters long')\nFROM books;\n\n-- UPPER AND LOWER\nSELECT LOWER(title) FROM books;\nSELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;\n\n-- EXERCISES\nSELECT REVERSE(UPPER('why does my cat look at me with such hatred?'));\n\n\n\n\n","undoManager":{"mark":-151,"position":100,"stack":[[{"start":{"row":75,"column":3},"end":{"row":75,"column":4},"action":"insert","lines":["U"],"id":441}],[{"start":{"row":75,"column":4},"end":{"row":75,"column":5},"action":"insert","lines":["P"],"id":442},{"start":{"row":75,"column":5},"end":{"row":75,"column":6},"action":"insert","lines":["P"]},{"start":{"row":75,"column":6},"end":{"row":75,"column":7},"action":"insert","lines":["E"]},{"start":{"row":75,"column":7},"end":{"row":75,"column":8},"action":"insert","lines":["R"]}],[{"start":{"row":75,"column":8},"end":{"row":75,"column":9},"action":"insert","lines":[" "],"id":443},{"start":{"row":75,"column":9},"end":{"row":75,"column":10},"action":"insert","lines":["A"]},{"start":{"row":75,"column":10},"end":{"row":75,"column":11},"action":"insert","lines":["N"]},{"start":{"row":75,"column":11},"end":{"row":75,"column":12},"action":"insert","lines":["D"]}],[{"start":{"row":75,"column":12},"end":{"row":75,"column":13},"action":"insert","lines":[" "],"id":444},{"start":{"row":75,"column":13},"end":{"row":75,"column":14},"action":"insert","lines":["L"]},{"start":{"row":75,"column":14},"end":{"row":75,"column":15},"action":"insert","lines":["O"]},{"start":{"row":75,"column":15},"end":{"row":75,"column":16},"action":"insert","lines":["W"]},{"start":{"row":75,"column":16},"end":{"row":75,"column":17},"action":"insert","lines":["E"]},{"start":{"row":75,"column":17},"end":{"row":75,"column":18},"action":"insert","lines":["R"]}],[{"start":{"row":75,"column":18},"end":{"row":76,"column":0},"action":"insert","lines":["",""],"id":445}],[{"start":{"row":76,"column":0},"end":{"row":76,"column":1},"action":"insert","lines":["S"],"id":446},{"start":{"row":76,"column":1},"end":{"row":76,"column":2},"action":"insert","lines":["E"]},{"start":{"row":76,"column":2},"end":{"row":76,"column":3},"action":"insert","lines":["L"]},{"start":{"row":76,"column":3},"end":{"row":76,"column":4},"action":"insert","lines":["E"]}],[{"start":{"row":76,"column":0},"end":{"row":76,"column":4},"action":"remove","lines":["SELE"],"id":447},{"start":{"row":76,"column":0},"end":{"row":76,"column":6},"action":"insert","lines":["SELECT"]}],[{"start":{"row":76,"column":6},"end":{"row":76,"column":7},"action":"insert","lines":[" "],"id":448}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["u"],"id":449}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"remove","lines":["u"],"id":450}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["U"],"id":451}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"remove","lines":["U"],"id":452},{"start":{"row":76,"column":7},"end":{"row":76,"column":12},"action":"insert","lines":["UPPER"]}],[{"start":{"row":76,"column":12},"end":{"row":76,"column":14},"action":"insert","lines":["()"],"id":453}],[{"start":{"row":76,"column":13},"end":{"row":76,"column":15},"action":"insert","lines":["''"],"id":454}],[{"start":{"row":76,"column":14},"end":{"row":76,"column":15},"action":"insert","lines":["t"],"id":455},{"start":{"row":76,"column":15},"end":{"row":76,"column":16},"action":"insert","lines":["i"]},{"start":{"row":76,"column":16},"end":{"row":76,"column":17},"action":"insert","lines":["t"]}],[{"start":{"row":76,"column":14},"end":{"row":76,"column":17},"action":"remove","lines":["tit"],"id":456},{"start":{"row":76,"column":14},"end":{"row":76,"column":19},"action":"insert","lines":["title"]}],[{"start":{"row":76,"column":21},"end":{"row":76,"column":22},"action":"insert","lines":[" "],"id":457},{"start":{"row":76,"column":22},"end":{"row":76,"column":23},"action":"insert","lines":["f"]},{"start":{"row":76,"column":23},"end":{"row":76,"column":24},"action":"insert","lines":["r"]},{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"insert","lines":["o"]},{"start":{"row":76,"column":25},"end":{"row":76,"column":26},"action":"insert","lines":["m"]}],[{"start":{"row":76,"column":25},"end":{"row":76,"column":26},"action":"remove","lines":["m"],"id":458},{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"remove","lines":["o"]},{"start":{"row":76,"column":23},"end":{"row":76,"column":24},"action":"remove","lines":["r"]},{"start":{"row":76,"column":22},"end":{"row":76,"column":23},"action":"remove","lines":["f"]}],[{"start":{"row":76,"column":22},"end":{"row":76,"column":23},"action":"insert","lines":["F"],"id":459},{"start":{"row":76,"column":23},"end":{"row":76,"column":24},"action":"insert","lines":["R"]},{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"insert","lines":["O"]},{"start":{"row":76,"column":25},"end":{"row":76,"column":26},"action":"insert","lines":["M"]}],[{"start":{"row":76,"column":26},"end":{"row":76,"column":27},"action":"insert","lines":[" "],"id":460},{"start":{"row":76,"column":27},"end":{"row":76,"column":28},"action":"insert","lines":["b"]},{"start":{"row":76,"column":28},"end":{"row":76,"column":29},"action":"insert","lines":["o"]},{"start":{"row":76,"column":29},"end":{"row":76,"column":30},"action":"insert","lines":["o"]}],[{"start":{"row":76,"column":27},"end":{"row":76,"column":30},"action":"remove","lines":["boo"],"id":461},{"start":{"row":76,"column":27},"end":{"row":76,"column":32},"action":"insert","lines":["books"]}],[{"start":{"row":76,"column":32},"end":{"row":76,"column":33},"action":"insert","lines":[";"],"id":462}],[{"start":{"row":76,"column":13},"end":{"row":76,"column":14},"action":"remove","lines":["'"],"id":463}],[{"start":{"row":76,"column":18},"end":{"row":76,"column":19},"action":"remove","lines":["'"],"id":464}],[{"start":{"row":76,"column":31},"end":{"row":77,"column":0},"action":"insert","lines":["",""],"id":465}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"insert","lines":["c"],"id":466}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"remove","lines":["c"],"id":467}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"insert","lines":["C"],"id":468},{"start":{"row":77,"column":1},"end":{"row":77,"column":2},"action":"insert","lines":["O"]},{"start":{"row":77,"column":2},"end":{"row":77,"column":3},"action":"insert","lines":["N"]}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":3},"action":"remove","lines":["CON"],"id":469},{"start":{"row":77,"column":0},"end":{"row":77,"column":6},"action":"insert","lines":["CONCAT"]}],[{"start":{"row":77,"column":6},"end":{"row":77,"column":8},"action":"insert","lines":["()"],"id":470}],[{"start":{"row":77,"column":7},"end":{"row":77,"column":9},"action":"insert","lines":["''"],"id":471}],[{"start":{"row":77,"column":8},"end":{"row":77,"column":9},"action":"insert","lines":["m"],"id":472}],[{"start":{"row":77,"column":8},"end":{"row":77,"column":9},"action":"remove","lines":["m"],"id":473}],[{"start":{"row":77,"column":8},"end":{"row":77,"column":9},"action":"insert","lines":["M"],"id":474},{"start":{"row":77,"column":9},"end":{"row":77,"column":10},"action":"insert","lines":["Y"]}],[{"start":{"row":77,"column":10},"end":{"row":77,"column":11},"action":"insert","lines":[" "],"id":475},{"start":{"row":77,"column":11},"end":{"row":77,"column":12},"action":"insert","lines":["F"]},{"start":{"row":77,"column":12},"end":{"row":77,"column":13},"action":"insert","lines":["A"]},{"start":{"row":77,"column":13},"end":{"row":77,"column":14},"action":"insert","lines":["V"]},{"start":{"row":77,"column":14},"end":{"row":77,"column":15},"action":"insert","lines":["O"]},{"start":{"row":77,"column":15},"end":{"row":77,"column":16},"action":"insert","lines":["R"]},{"start":{"row":77,"column":16},"end":{"row":77,"column":17},"action":"insert","lines":["I"]},{"start":{"row":77,"column":17},"end":{"row":77,"column":18},"action":"insert","lines":["T"]},{"start":{"row":77,"column":18},"end":{"row":77,"column":19},"action":"insert","lines":["E"]}],[{"start":{"row":77,"column":19},"end":{"row":77,"column":20},"action":"insert","lines":[" "],"id":476},{"start":{"row":77,"column":20},"end":{"row":77,"column":21},"action":"insert","lines":["B"]},{"start":{"row":77,"column":21},"end":{"row":77,"column":22},"action":"insert","lines":["O"]},{"start":{"row":77,"column":22},"end":{"row":77,"column":23},"action":"insert","lines":["O"]},{"start":{"row":77,"column":23},"end":{"row":77,"column":24},"action":"insert","lines":["K"]}],[{"start":{"row":77,"column":24},"end":{"row":77,"column":25},"action":"insert","lines":[" "],"id":477},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"insert","lines":["I"]},{"start":{"row":77,"column":26},"end":{"row":77,"column":27},"action":"insert","lines":["S"]}],[{"start":{"row":77,"column":27},"end":{"row":77,"column":28},"action":"insert","lines":[" "],"id":478}],[{"start":{"row":77,"column":28},"end":{"row":77,"column":29},"action":"insert","lines":["T"],"id":479},{"start":{"row":77,"column":29},"end":{"row":77,"column":30},"action":"insert","lines":["H"]},{"start":{"row":77,"column":30},"end":{"row":77,"column":31},"action":"insert","lines":["E"]}],[{"start":{"row":77,"column":30},"end":{"row":77,"column":31},"action":"remove","lines":["E"],"id":480},{"start":{"row":77,"column":29},"end":{"row":77,"column":30},"action":"remove","lines":["H"]},{"start":{"row":77,"column":28},"end":{"row":77,"column":29},"action":"remove","lines":["T"]},{"start":{"row":77,"column":27},"end":{"row":77,"column":28},"action":"remove","lines":[" "]}],[{"start":{"row":77,"column":27},"end":{"row":77,"column":28},"action":"insert","lines":[" "],"id":481}],[{"start":{"row":77,"column":30},"end":{"row":77,"column":31},"action":"insert","lines":[","],"id":482}],[{"start":{"row":77,"column":31},"end":{"row":77,"column":32},"action":"insert","lines":[" "],"id":483},{"start":{"row":77,"column":32},"end":{"row":77,"column":33},"action":"insert","lines":["U"]}],[{"start":{"row":77,"column":32},"end":{"row":77,"column":33},"action":"remove","lines":["U"],"id":484},{"start":{"row":77,"column":32},"end":{"row":77,"column":37},"action":"insert","lines":["UPPER"]}],[{"start":{"row":77,"column":37},"end":{"row":77,"column":39},"action":"insert","lines":["()"],"id":485}],[{"start":{"row":77,"column":38},"end":{"row":77,"column":39},"action":"insert","lines":["T"],"id":486},{"start":{"row":77,"column":39},"end":{"row":77,"column":40},"action":"insert","lines":["I"]}],[{"start":{"row":77,"column":39},"end":{"row":77,"column":40},"action":"remove","lines":["I"],"id":487},{"start":{"row":77,"column":38},"end":{"row":77,"column":39},"action":"remove","lines":["T"]}],[{"start":{"row":77,"column":38},"end":{"row":77,"column":39},"action":"insert","lines":["t"],"id":488},{"start":{"row":77,"column":39},"end":{"row":77,"column":40},"action":"insert","lines":["i"]},{"start":{"row":77,"column":40},"end":{"row":77,"column":41},"action":"insert","lines":["t"]}],[{"start":{"row":77,"column":38},"end":{"row":77,"column":41},"action":"remove","lines":["tit"],"id":489},{"start":{"row":77,"column":38},"end":{"row":77,"column":43},"action":"insert","lines":["title"]}],[{"start":{"row":77,"column":44},"end":{"row":77,"column":45},"action":"insert","lines":[")"],"id":490}],[{"start":{"row":77,"column":29},"end":{"row":77,"column":30},"action":"remove","lines":[")"],"id":491}],[{"start":{"row":77,"column":44},"end":{"row":77,"column":45},"action":"insert","lines":[" "],"id":492},{"start":{"row":77,"column":45},"end":{"row":77,"column":46},"action":"insert","lines":["f"]},{"start":{"row":77,"column":46},"end":{"row":77,"column":47},"action":"insert","lines":["r"]},{"start":{"row":77,"column":47},"end":{"row":77,"column":48},"action":"insert","lines":["o"]},{"start":{"row":77,"column":48},"end":{"row":77,"column":49},"action":"insert","lines":["m"]}],[{"start":{"row":77,"column":48},"end":{"row":77,"column":49},"action":"remove","lines":["m"],"id":493},{"start":{"row":77,"column":47},"end":{"row":77,"column":48},"action":"remove","lines":["o"]},{"start":{"row":77,"column":46},"end":{"row":77,"column":47},"action":"remove","lines":["r"]},{"start":{"row":77,"column":45},"end":{"row":77,"column":46},"action":"remove","lines":["f"]}],[{"start":{"row":77,"column":45},"end":{"row":77,"column":46},"action":"insert","lines":["F"],"id":494},{"start":{"row":77,"column":46},"end":{"row":77,"column":47},"action":"insert","lines":["R"]},{"start":{"row":77,"column":47},"end":{"row":77,"column":48},"action":"insert","lines":["O"]},{"start":{"row":77,"column":48},"end":{"row":77,"column":49},"action":"insert","lines":["M"]}],[{"start":{"row":77,"column":49},"end":{"row":77,"column":50},"action":"insert","lines":[" "],"id":495},{"start":{"row":77,"column":50},"end":{"row":77,"column":51},"action":"insert","lines":["b"]},{"start":{"row":77,"column":51},"end":{"row":77,"column":52},"action":"insert","lines":["o"]},{"start":{"row":77,"column":52},"end":{"row":77,"column":53},"action":"insert","lines":["o"]},{"start":{"row":77,"column":53},"end":{"row":77,"column":54},"action":"insert","lines":["k"]},{"start":{"row":77,"column":54},"end":{"row":77,"column":55},"action":"insert","lines":[";"]}],[{"start":{"row":77,"column":54},"end":{"row":77,"column":55},"action":"remove","lines":[";"],"id":496}],[{"start":{"row":77,"column":54},"end":{"row":77,"column":55},"action":"insert","lines":["s"],"id":497},{"start":{"row":77,"column":55},"end":{"row":77,"column":56},"action":"insert","lines":[";"]}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"insert","lines":["s"],"id":498},{"start":{"row":77,"column":1},"end":{"row":77,"column":2},"action":"insert","lines":["e"]}],[{"start":{"row":77,"column":1},"end":{"row":77,"column":2},"action":"remove","lines":["e"],"id":499},{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"remove","lines":["s"]}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":1},"action":"insert","lines":["S"],"id":500},{"start":{"row":77,"column":1},"end":{"row":77,"column":2},"action":"insert","lines":["E"]}],[{"start":{"row":77,"column":0},"end":{"row":77,"column":2},"action":"remove","lines":["SE"],"id":501},{"start":{"row":77,"column":0},"end":{"row":77,"column":6},"action":"insert","lines":["SELECT"]}],[{"start":{"row":77,"column":6},"end":{"row":77,"column":7},"action":"insert","lines":[" "],"id":502}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":12},"action":"remove","lines":["UPPER"],"id":503},{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["l"]},{"start":{"row":76,"column":8},"end":{"row":76,"column":9},"action":"insert","lines":["o"]},{"start":{"row":76,"column":9},"end":{"row":76,"column":10},"action":"insert","lines":["w"]}],[{"start":{"row":76,"column":9},"end":{"row":76,"column":10},"action":"remove","lines":["w"],"id":504},{"start":{"row":76,"column":8},"end":{"row":76,"column":9},"action":"remove","lines":["o"]},{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"remove","lines":["l"]}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":8},"action":"insert","lines":["L"],"id":505},{"start":{"row":76,"column":8},"end":{"row":76,"column":9},"action":"insert","lines":["O"]},{"start":{"row":76,"column":9},"end":{"row":76,"column":10},"action":"insert","lines":["W"]}],[{"start":{"row":76,"column":7},"end":{"row":76,"column":10},"action":"remove","lines":["LOW"],"id":506},{"start":{"row":76,"column":7},"end":{"row":76,"column":12},"action":"insert","lines":["LOWER"]}],[{"start":{"row":78,"column":0},"end":{"row":79,"column":0},"action":"insert","lines":["",""],"id":507}],[{"start":{"row":79,"column":0},"end":{"row":79,"column":1},"action":"insert","lines":["s"],"id":508},{"start":{"row":79,"column":1},"end":{"row":79,"column":2},"action":"insert","lines":["l"]}],[{"start":{"row":79,"column":1},"end":{"row":79,"column":2},"action":"remove","lines":["l"],"id":509},{"start":{"row":79,"column":0},"end":{"row":79,"column":1},"action":"remove","lines":["s"]}],[{"start":{"row":79,"column":0},"end":{"row":79,"column":1},"action":"insert","lines":["S"],"id":510},{"start":{"row":79,"column":1},"end":{"row":79,"column":2},"action":"insert","lines":["E"]},{"start":{"row":79,"column":2},"end":{"row":79,"column":3},"action":"insert","lines":["L"]},{"start":{"row":79,"column":3},"end":{"row":79,"column":4},"action":"insert","lines":["E"]}],[{"start":{"row":79,"column":0},"end":{"row":79,"column":4},"action":"remove","lines":["SELE"],"id":511},{"start":{"row":79,"column":0},"end":{"row":79,"column":6},"action":"insert","lines":["SELECT"]}],[{"start":{"row":79,"column":6},"end":{"row":79,"column":7},"action":"insert","lines":[" "],"id":512},{"start":{"row":79,"column":7},"end":{"row":79,"column":8},"action":"insert","lines":["R"]},{"start":{"row":79,"column":8},"end":{"row":79,"column":9},"action":"insert","lines":["E"]}],[{"start":{"row":79,"column":7},"end":{"row":79,"column":9},"action":"remove","lines":["RE"],"id":513},{"start":{"row":79,"column":7},"end":{"row":79,"column":14},"action":"insert","lines":["REPLACE"]}],[{"start":{"row":79,"column":13},"end":{"row":79,"column":14},"action":"remove","lines":["E"],"id":514},{"start":{"row":79,"column":12},"end":{"row":79,"column":13},"action":"remove","lines":["C"]},{"start":{"row":79,"column":11},"end":{"row":79,"column":12},"action":"remove","lines":["A"]},{"start":{"row":79,"column":10},"end":{"row":79,"column":11},"action":"remove","lines":["L"]},{"start":{"row":79,"column":9},"end":{"row":79,"column":10},"action":"remove","lines":["P"]}],[{"start":{"row":79,"column":9},"end":{"row":79,"column":10},"action":"insert","lines":["V"],"id":515}],[{"start":{"row":79,"column":7},"end":{"row":79,"column":10},"action":"remove","lines":["REV"],"id":516},{"start":{"row":79,"column":7},"end":{"row":79,"column":14},"action":"insert","lines":["REVERSE"]}],[{"start":{"row":79,"column":14},"end":{"row":79,"column":16},"action":"insert","lines":["()"],"id":517}],[{"start":{"row":79,"column":15},"end":{"row":79,"column":16},"action":"insert","lines":["U"],"id":518}],[{"start":{"row":79,"column":15},"end":{"row":79,"column":16},"action":"remove","lines":["U"],"id":519},{"start":{"row":79,"column":15},"end":{"row":79,"column":20},"action":"insert","lines":["UPPER"]}],[{"start":{"row":79,"column":20},"end":{"row":79,"column":22},"action":"insert","lines":["()"],"id":520}],[{"start":{"row":79,"column":21},"end":{"row":79,"column":23},"action":"insert","lines":["''"],"id":521}],[{"start":{"row":79,"column":22},"end":{"row":79,"column":23},"action":"insert","lines":["w"],"id":522},{"start":{"row":79,"column":23},"end":{"row":79,"column":24},"action":"insert","lines":["h"]},{"start":{"row":79,"column":24},"end":{"row":79,"column":25},"action":"insert","lines":["y"]}],[{"start":{"row":79,"column":25},"end":{"row":79,"column":26},"action":"insert","lines":[" "],"id":523},{"start":{"row":79,"column":26},"end":{"row":79,"column":27},"action":"insert","lines":["d"]},{"start":{"row":79,"column":27},"end":{"row":79,"column":28},"action":"insert","lines":["o"]},{"start":{"row":79,"column":28},"end":{"row":79,"column":29},"action":"insert","lines":["e"]},{"start":{"row":79,"column":29},"end":{"row":79,"column":30},"action":"insert","lines":["s"]}],[{"start":{"row":79,"column":30},"end":{"row":79,"column":31},"action":"insert","lines":[" "],"id":524},{"start":{"row":79,"column":31},"end":{"row":79,"column":32},"action":"insert","lines":["m"]},{"start":{"row":79,"column":32},"end":{"row":79,"column":33},"action":"insert","lines":["y"]}],[{"start":{"row":79,"column":33},"end":{"row":79,"column":34},"action":"insert","lines":[" "],"id":525},{"start":{"row":79,"column":34},"end":{"row":79,"column":35},"action":"insert","lines":["c"]},{"start":{"row":79,"column":35},"end":{"row":79,"column":36},"action":"insert","lines":["a"]},{"start":{"row":79,"column":36},"end":{"row":79,"column":37},"action":"insert","lines":["t"]}],[{"start":{"row":79,"column":37},"end":{"row":79,"column":38},"action":"insert","lines":[" "],"id":526},{"start":{"row":79,"column":38},"end":{"row":79,"column":39},"action":"insert","lines":["l"]},{"start":{"row":79,"column":39},"end":{"row":79,"column":40},"action":"insert","lines":["o"]},{"start":{"row":79,"column":40},"end":{"row":79,"column":41},"action":"insert","lines":["o"]},{"start":{"row":79,"column":41},"end":{"row":79,"column":42},"action":"insert","lines":["k"]}],[{"start":{"row":79,"column":42},"end":{"row":79,"column":43},"action":"insert","lines":[" "],"id":527},{"start":{"row":79,"column":43},"end":{"row":79,"column":44},"action":"insert","lines":["a"]},{"start":{"row":79,"column":44},"end":{"row":79,"column":45},"action":"insert","lines":["t"]}],[{"start":{"row":79,"column":45},"end":{"row":79,"column":46},"action":"insert","lines":[" "],"id":528},{"start":{"row":79,"column":46},"end":{"row":79,"column":47},"action":"insert","lines":["m"]},{"start":{"row":79,"column":47},"end":{"row":79,"column":48},"action":"insert","lines":["e"]}],[{"start":{"row":79,"column":48},"end":{"row":79,"column":49},"action":"insert","lines":[" "],"id":529},{"start":{"row":79,"column":49},"end":{"row":79,"column":50},"action":"insert","lines":["w"]},{"start":{"row":79,"column":50},"end":{"row":79,"column":51},"action":"insert","lines":["i"]},{"start":{"row":79,"column":51},"end":{"row":79,"column":52},"action":"insert","lines":["t"]},{"start":{"row":79,"column":52},"end":{"row":79,"column":53},"action":"insert","lines":["h"]}],[{"start":{"row":79,"column":53},"end":{"row":79,"column":54},"action":"insert","lines":[" "],"id":530},{"start":{"row":79,"column":54},"end":{"row":79,"column":55},"action":"insert","lines":["s"]},{"start":{"row":79,"column":55},"end":{"row":79,"column":56},"action":"insert","lines":["u"]},{"start":{"row":79,"column":56},"end":{"row":79,"column":57},"action":"insert","lines":["c"]},{"start":{"row":79,"column":57},"end":{"row":79,"column":58},"action":"insert","lines":["h"]}],[{"start":{"row":79,"column":58},"end":{"row":79,"column":59},"action":"insert","lines":[" "],"id":531},{"start":{"row":79,"column":59},"end":{"row":79,"column":60},"action":"insert","lines":["h"]},{"start":{"row":79,"column":60},"end":{"row":79,"column":61},"action":"insert","lines":["a"]},{"start":{"row":79,"column":61},"end":{"row":79,"column":62},"action":"insert","lines":["t"]}],[{"start":{"row":79,"column":62},"end":{"row":79,"column":63},"action":"insert","lines":["r"],"id":532},{"start":{"row":79,"column":63},"end":{"row":79,"column":64},"action":"insert","lines":["e"]},{"start":{"row":79,"column":64},"end":{"row":79,"column":65},"action":"insert","lines":["d"]}],[{"start":{"row":79,"column":65},"end":{"row":79,"column":66},"action":"insert","lines":["?"],"id":533}],[{"start":{"row":79,"column":69},"end":{"row":79,"column":70},"action":"insert","lines":[";"],"id":534}],[{"start":{"row":78,"column":0},"end":{"row":79,"column":0},"action":"insert","lines":["",""],"id":535},{"start":{"row":79,"column":0},"end":{"row":79,"column":1},"action":"insert","lines":["-"]},{"start":{"row":79,"column":1},"end":{"row":79,"column":2},"action":"insert","lines":["-"]}],[{"start":{"row":79,"column":2},"end":{"row":79,"column":3},"action":"insert","lines":[" "],"id":536},{"start":{"row":79,"column":3},"end":{"row":79,"column":4},"action":"insert","lines":["e"]}],[{"start":{"row":79,"column":3},"end":{"row":79,"column":4},"action":"remove","lines":["e"],"id":537}],[{"start":{"row":79,"column":3},"end":{"row":79,"column":4},"action":"insert","lines":["E"],"id":538},{"start":{"row":79,"column":4},"end":{"row":79,"column":5},"action":"insert","lines":["X"]},{"start":{"row":79,"column":5},"end":{"row":79,"column":6},"action":"insert","lines":["C"]},{"start":{"row":79,"column":6},"end":{"row":79,"column":7},"action":"insert","lines":["E"]},{"start":{"row":79,"column":7},"end":{"row":79,"column":8},"action":"insert","lines":["R"]}],[{"start":{"row":79,"column":7},"end":{"row":79,"column":8},"action":"remove","lines":["R"],"id":539},{"start":{"row":79,"column":6},"end":{"row":79,"column":7},"action":"remove","lines":["E"]},{"start":{"row":79,"column":5},"end":{"row":79,"column":6},"action":"remove","lines":["C"]}],[{"start":{"row":79,"column":5},"end":{"row":79,"column":6},"action":"insert","lines":["E"],"id":540},{"start":{"row":79,"column":6},"end":{"row":79,"column":7},"action":"insert","lines":["R"]},{"start":{"row":79,"column":7},"end":{"row":79,"column":8},"action":"insert","lines":["C"]},{"start":{"row":79,"column":8},"end":{"row":79,"column":9},"action":"insert","lines":["I"]},{"start":{"row":79,"column":9},"end":{"row":79,"column":10},"action":"insert","lines":["S"]},{"start":{"row":79,"column":10},"end":{"row":79,"column":11},"action":"insert","lines":["E"]}],[{"start":{"row":79,"column":11},"end":{"row":79,"column":12},"action":"insert","lines":["S"],"id":541}]]},"ace":{"folds":[],"scrolltop":780,"scrollleft":0,"selection":{"start":{"row":44,"column":42},"end":{"row":44,"column":42},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":32,"state":"start","mode":"ace/mode/sql"}},"timestamp":1555428865709}