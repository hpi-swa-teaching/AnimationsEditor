testing
testTargetColorGetterAsString	
	self assert: (self propertyColor currentValueAsString =  (self morph color asString copyReplaceAll: 'Color ' with: '')).