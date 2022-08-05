testing
testDeleteMorphIsTimeConsistent
	| beforeTime afterTime |
	
	beforeTime := self animationsEditorInstance propertyStartEnd endTime.
	self animationsEditorInstance deleteMorph.
	afterTime := self animationsEditorInstance propertyStartEnd endTime.
	self assert: (beforeTime <= afterTime).