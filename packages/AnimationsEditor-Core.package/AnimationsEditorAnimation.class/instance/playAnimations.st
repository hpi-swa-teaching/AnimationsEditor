animation
playAnimations
	self propertyStore collect: [ :each | each target: self targetMorph. 
												    each register.
												    each start]. 