eventHandling
switchTimelineToMorphWith: aSubProperty
	| morphProperty |

	morphProperty := self propertyList detect: [:property | property targetMorph = aSubProperty targetMorph] ifNone: [].
	self timeline switchTimelineTo: morphProperty.