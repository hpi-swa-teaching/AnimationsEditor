eventHandling
loadJsonWithExceptionHandling: aText 
	[self jsonHandler loadJson: aText.
	self updateInformationText: 'Animation loaded']
		on: KeyNotFound
		do: [:error | self updateInformationText: 'Invalid JSON (' , error messageText , ')'].
	