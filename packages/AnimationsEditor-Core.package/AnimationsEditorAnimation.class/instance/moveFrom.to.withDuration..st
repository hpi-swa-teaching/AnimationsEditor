animation
moveFrom: aPositon to: aPostion withDuration: aNumber
	self propertyStore add: (AnimPropertyAnimation new
										   duration: 500;
										   property: #position;
										   startValue: 10@10;
										   endValue: 100@100;
										   state: #paused).
											