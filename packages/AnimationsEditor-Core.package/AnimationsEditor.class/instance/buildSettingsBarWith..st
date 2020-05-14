initialize-release
buildSettingsBarWith: aBuilder
	^ aBuilder pluggablePanelSpec new
			model: self;
			color: Color red;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						leftFraction: 0.7;
						rightFraction: 1;
						yourself);
			children: {self buildSettingsDropdownWith: aBuilder}
			yourself.