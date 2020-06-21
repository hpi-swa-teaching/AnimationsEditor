buildComponents
collectPropertyTreeMorph
	self flag: #todo.
	"Main window accessing"
	mainWindow submorphs do: [:each | 
		each class == PluggableTreeMorph
			ifTrue: [self propertyTreeMorph: each.
					  Transcript show: each class]].