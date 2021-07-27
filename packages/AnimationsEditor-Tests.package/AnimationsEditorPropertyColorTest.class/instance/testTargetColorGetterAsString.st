testing
testTargetColorGetterAsString	
	self assert: (self property currentValueAsString =  (self morph color asString copyReplaceAll: 'Color ' with: '')).