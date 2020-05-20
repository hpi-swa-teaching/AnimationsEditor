initialize-release
testInstanceCreation
	| AnimationsEdtiorInstance |
	AnimationsEdtiorInstance := AnimationsEditor open.
	self assert:
		(AnimationsEdtiorInstance = nil) not.
	
	AnimationsEdtiorInstance abandon.