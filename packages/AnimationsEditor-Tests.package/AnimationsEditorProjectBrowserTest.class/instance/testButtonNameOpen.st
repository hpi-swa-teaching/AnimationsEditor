as yet unclassified
testButtonNameOpen
	| window button |
	window := AnimationsEditorProjectBrowser open.
	window windowReference submorphs do: [:each | 
															(each class == PluggableButtonMorphPlus)
																ifTrue: [
																	(each label = 'open existing project') 
																		ifTrue: [button := each]]].
	self assert: (button = nil) not.
	self assert: (button actionSelector = #openExistingProject).
	window windowReference abandon.		