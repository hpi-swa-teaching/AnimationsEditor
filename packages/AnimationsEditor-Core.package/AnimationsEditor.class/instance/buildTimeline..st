initialize-release
buildTimeline: aBuilder
		^ aBuilder pluggablePanelSpec new
			model: self;
			frame: (LayoutFrame new
						topFraction: 0.7;
						bottomFraction: 1;
						rightFraction: 0.7;
						leftFraction: 0;
						yourself);
			yourself.