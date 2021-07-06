accessing
updateInformationText: aString
	self ui informationBarText: aString.
	self ui informationBar update: self ui informationBar getTextSelector.
