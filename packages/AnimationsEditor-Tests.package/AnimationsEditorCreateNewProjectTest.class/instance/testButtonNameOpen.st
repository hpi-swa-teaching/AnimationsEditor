as yet unclassified
testButtonNameOpen
	| window button |
	window := AnimationsEditorCreateNewProject open.
	window windowReference submorphs do: [:each | 
															(each class == PluggableButtonMorphPlus)
																ifTrue: [
																	(each label = 'create project') 
																		ifTrue: [button := each]]].
												
	self assert: (button = nil) not.												
	self assert: (button actionSelector = #openAnimationsEditor).
	window windowReference closeBoxHit.
