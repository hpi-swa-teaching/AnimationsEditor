buildComponents
buildTextTextWith: aBuilder
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'Text to show';
			enabled: false;
			frame: (LayoutFrame new
				topFraction: 0.1;
				bottomFraction: 0.5;
				leftFraction: 0.5;
				rightFraction: 1;
				yourself);
			yourself.