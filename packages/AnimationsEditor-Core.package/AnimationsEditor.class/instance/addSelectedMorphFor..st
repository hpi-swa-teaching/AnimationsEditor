buildComponents
addSelectedMorphFor: anEvent
	self addTargetMorph: (self getDeepestMorph: self currentHand selectedObject at: anEvent position).
   	self currentHand removeMouseListener: self.
   	self updateInformationText: 'Added new Morph'.