buildComponents
selectMorphByHand
	self updateInformationText: 'Waiting to pick a morph to add (default: alt + mouse left)'.
	self currentHand addMouseListener: self.