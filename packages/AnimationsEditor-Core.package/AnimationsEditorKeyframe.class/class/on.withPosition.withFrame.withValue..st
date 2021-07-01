as yet unclassified
on: anAnimationsEditorTrack withPosition: aPoint withFrame: aFrame withValue: aValue 

	^ self basicNew
	      timeline: anAnimationsEditorTrack;
		frame: aFrame;
		value: aValue; 
	      initialize;
		position: aPoint;
	      yourself.