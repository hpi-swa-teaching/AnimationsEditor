as yet unclassified
testButtonNameCreate
	| window button |
	window := AnimationsEditorProjectBrowser open.
	window windowReference submorphs do: [:each | 
															(each class == PluggableButtonMorphPlus)
																ifTrue: [
																	(each label = 'create new project') 
																		ifTrue: [button := each]]].
	self assert: (button = nil) not.
	self assert: (button actionSelector = #openPopupCreateNewProject).
	window windowReference abandon.		