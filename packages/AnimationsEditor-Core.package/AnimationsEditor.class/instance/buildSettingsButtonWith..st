initialize-release
buildSettingsButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'Test';
			action: self dummy;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.