initialization
on: anAnimationsEditorTimeline withProperty: aProperty withPosition: aPoint withExtent: anotherPoint withAnimationsEditor: anAnimationsEditor
	^ self basicNew timeline: anAnimationsEditorTimeline;
		 property: aProperty;
		 initialize;
		 position: aPoint;
		 extent: anotherPoint;
		 animationsEditor: anAnimationsEditor;
		 initializeTrack;
		 yourself.