initialize-release
buildButton: aBuilder side: aSide label: aLabel action: anAction 
	| color frame |
	color := Color gray.
	
	aSide = #right
		ifTrue: [color := Color green.
			frame := self rightFrame].
		
	aSide = #left
		ifTrue: [color := Color red.
			frame := self leftFrame].
		
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: aLabel;
			action: anAction;
			color: color;
			frame: frame;
			yourself.