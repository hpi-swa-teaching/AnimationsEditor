temporary
buildPositionUIWith: aBuilder
| aPanel anInputX anInputY |

	anInputX := aBuilder pluggableTextSpec new
				model: self;
				getText: #positionX;
				editText: #positionX:;
				 frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.4;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself.
				
	anInputY := aBuilder pluggableTextSpec new
				model: self;
				getText: #positionY;
				setText: #positionY:;
				 frame: (LayoutFrame new
								topFraction: 0.5;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 01;
								yourself);
				 yourself.
			
aPanel := aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 0.125;
						rightFraction: 0.25;
						leftFraction: 0;
						yourself);
			children: {anInputX.  anInputY.};
			yourself.	
			

^ aPanel.