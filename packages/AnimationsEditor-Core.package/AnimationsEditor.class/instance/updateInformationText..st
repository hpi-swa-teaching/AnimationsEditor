accessing
updateInformationText: aString
	self informationBarText: aString.
	self informationBar update: self informationBar getTextSelector. 