animation
updateTargetMorphForAllProperties: aTargetMorph
	self targetMorph: aTargetMorph. 
	self subproperties valuesDo: [ :each | each targetMorph: aTargetMorph].