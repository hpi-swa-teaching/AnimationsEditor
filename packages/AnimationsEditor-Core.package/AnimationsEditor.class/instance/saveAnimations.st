buildComponents
saveAnimations
	self informationBarText: 'Copied animation code to clipboard!'.
	self informationBar update: self informationBar getTextSelector.
	
	Clipboard clipboardText: self selectedTreeNode animationString.