buildComponents
openMorphLoadingField
	| sampleText |
	
	sampleText:= '{
	"start": 0,
	"end": 500,
	"morphs": [
     	{
        	"type":  "RectangleMorph",
    	"properties": [
    	{"name":"rotation", "value": 50},
    	{"name":"positionX", "value": 1},
    	{"name":"positionY", "value": 1},
    	{"name":"width", "value": 100},
    	{"name":"height", "value":100},
    	{"name": "color", "value": "Color r: 123 g: 123: b:123"}
    	],
        	"frames": [
             	{
                	"frame": 500,
            	"properties": [
{"name":"rotation", "value": 40}
]
            	}
        	]
	}
   	]
}'.

	self loadJSON: sampleText.
	