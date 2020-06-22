animation
setPositionTo: aPosition WithDuration: aDuration
	| animation |
	self flag: 'change start value'.
	
	animation := AnimPropertyAnimation new
	   duration: aDuration;
	   property: #position;
	   startValue: 10@10;
	   endValue: aPosition;
	   state: #paused.
	
	^ animation.
	
	