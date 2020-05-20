animation
playAnimations
	self propertyStore collect: [ :each | each target: self target. 
															each register. 
															each start]. 