load-json
loadJsonWithExceptionHandling: aText 
	[self loadJson: aText.
	self updateInformationText: 'Animation loaded']
		on: KeyNotFound
		do: [:error | self updateInformationText: 'Invalid JSON (' , error messageText , ')'].
	