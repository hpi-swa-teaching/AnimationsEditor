eventHandling
switchTimelineToMorphWith: aSubProperty
	| morphProperty |
	
	(aSubProperty isKindOf: AnimationsEditorPropertyStartEnd)
		ifFalse:  [
			morphProperty := self propertyList detect: [:property | property targetMorph = aSubProperty targetMorph] ifNone: [].
			self timeline switchTimelineTo: morphProperty. 
		]. 