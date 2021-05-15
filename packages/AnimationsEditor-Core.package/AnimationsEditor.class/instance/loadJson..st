load-json
loadJson: aText
	| data |
	data:= STON fromString: aText.
	self loadStartEnd: data.
	self loadMorphs: (data at: 'morphs').