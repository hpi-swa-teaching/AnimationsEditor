buildComponents
buildColorPicker
	| panelMorph |
	

	panelMorph:= PluggablePanelMorph new addMorph: (self colorPicker: ColorPickerMorph new).
	
	^panelMorph.
	
	"aBuilder ColorPickerMorph new
				model: self;
				getText: #targetColorAsString;
				editText: #targetColor:;
			 	frame: (LayoutFrame new
								topFraction: 0.1;
								bottomFraction: 0.8;
								leftFraction: 0;
								rightFraction: 1;
								yourself);
				 yourself."