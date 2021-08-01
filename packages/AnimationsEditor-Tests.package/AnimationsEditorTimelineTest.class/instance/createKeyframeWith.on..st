creation
createKeyframeWith: aValue on: aFrame

	self propertyPosition
		currentValue: aValue;
		frame: aFrame;
		addKeyframe.