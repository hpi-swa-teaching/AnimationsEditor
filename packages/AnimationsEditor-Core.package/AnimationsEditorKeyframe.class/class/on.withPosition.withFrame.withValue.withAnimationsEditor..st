initialization
on: anAnimationsEditorTrack withPosition: aPoint withFrame: aFrame withValue: aValue withAnimationsEditor: anAnimationsEditor
	^ self basicNew track: anAnimationsEditorTrack;
		 frame: aFrame;
		 value: aValue;
		 initialize;
		 setCenteredPosition: aPoint;
		 animationsEditor: anAnimationsEditor;
		 yourself.