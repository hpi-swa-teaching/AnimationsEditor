buildComponents
buildTimeline: aBuilder
		^ aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.65;
						bottomFraction: 0.95;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.