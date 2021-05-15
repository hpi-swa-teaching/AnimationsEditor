eventHandling
openMorphLoadingField
	| sampleText |
	
	sampleText := '{
	"end" : 500,
	"morphs" : [
		{
			"type" : "Morphasdad",
			"frames" : [
				{
					"frame" : 500,
					"properties" : [
						{
							"value" : "Color black",
							"name" : "color"
						}
					]
				}
			],
			"properties" : [
				{
					"value" : 0.0,
					"name" : "rotation"
				},
				{
					"value" : 48.0,
					"name" : "positionX"
				},
				{
					"value" : 104,
					"name" : "positionY"
				},
				{
					"value" : 50,
					"name" : "width"
				},
				{
					"value" : 40,
					"name" : "height"
				},
				{
					"value" : "123,21,123",
					"name" : "color"
				}
			]
		}
	],
	"start" : 0
}'.

	self loadJson: sampleText.
	