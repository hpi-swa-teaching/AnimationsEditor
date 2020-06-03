accessing
saveAnimationsObject: aObject withName: aString
	| serializedObject |
	serializedObject := aObject storeString.
	self animationStore
		at: #aString
		put: serializedObject.
	