events
setValueAndFrame
	|selectedFrame selectedValue|
	
	selectedValue := self property targetValues at: self frame.
	selectedFrame:= self frame.
	self property currentValue: selectedValue.
	self property targetFrame: selectedFrame.