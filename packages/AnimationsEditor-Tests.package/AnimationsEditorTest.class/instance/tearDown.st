running
tearDown
	super tearDown.
	self animationsEditorInstance propertyList first ifNotNil: [
		self deleteMorph: self morph].
	self animationsEditorInstance windowReference abandon.
