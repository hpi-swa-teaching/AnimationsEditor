clearComponents
removeMorphProperties

	self propertyList copy do: [:each | 	
			(self isPropertyToDelete: each)
				ifTrue: [self propertyList remove: each.].].