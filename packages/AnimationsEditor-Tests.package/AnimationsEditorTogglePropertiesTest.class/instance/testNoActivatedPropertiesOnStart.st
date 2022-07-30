testing
testNoActivatedPropertiesOnStart  
	| allSubpropertiesDeactivated |    
	
	allSubpropertiesDeactivated := true.  
	self animationsEditorInstance propertyList first subproperties do: [:property | property isActivated ifTrue: [allSubpropertiesDeactivated := true.].].  
	self assert: allSubpropertiesDeactivated.