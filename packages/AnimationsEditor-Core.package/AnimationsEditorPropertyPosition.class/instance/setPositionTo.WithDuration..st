animation
setPositionTo: aPosition WithDuration: aDuration
	| anim |
	anim := AnimPropertyAnimation new
	   duration: aDuration;
	   property: #position;
	   startValue: 10@10;
	   endValue: aPosition;
	   state: #paused.
	
	self flag: 'change start value'.