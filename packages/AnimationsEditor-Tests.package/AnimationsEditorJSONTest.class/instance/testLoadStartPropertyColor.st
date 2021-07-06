loadJson
testLoadStartPropertyColor
	| morph data |
	
	data := {{
					'value' -> 'blue'.
					'name' -> 'color'
				} as: Dictionary}.
	morph := Morph new.
	self jsonHandler loadStartProperties: data with: morph.
	self assert: morph color = Color blue.