as yet unclassified
onParent: anAnimationsEditorProperty

	^ self basicNew
		targetMorph: anAnimationsEditorProperty targetMorph;
		animationsEditor: anAnimationsEditorProperty animationsEditor;
		parentProperty: anAnimationsEditorProperty; 
		initialize;
		yourself.