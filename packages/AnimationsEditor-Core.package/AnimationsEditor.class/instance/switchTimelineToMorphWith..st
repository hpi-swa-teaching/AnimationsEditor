eventHandling
switchTimelineToMorphWith: aProperty 
	aProperty hasSubproperties
		ifTrue: [self timeline switchTimelineTo: aProperty]
		ifFalse: [self timeline switchTimelineTo: aProperty parentProperty].