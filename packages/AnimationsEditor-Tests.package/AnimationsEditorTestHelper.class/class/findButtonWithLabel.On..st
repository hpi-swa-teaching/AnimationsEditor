as yet unclassified
findButtonWithLabel: aString On: aMorph
	aMorph submorphs do: [:each | 
												(each class == PluggableButtonMorphPlus)
													ifTrue: [(each label = aString) 
																	ifTrue: [^ each]]].
												
	^ nil.