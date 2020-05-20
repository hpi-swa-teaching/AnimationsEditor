accessing
saveAnimationsObject: aObject withName: aString
	| serializedObject |
	serializedObject := aObject storeString.
	self animationsStore at: #aString put: serializedObject.
	