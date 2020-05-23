initialize-release
buildTimeline: aBuilder
		^ aBuilder pluggableScrollPaneSpec new
			model: self;
			"label: 'Test';"
			frame: (LayoutFrame new
						topFraction: 0.8;
						bottomFraction: 1;
						rightFraction: 0.7;
						leftFraction: 0;
						yourself);
			yourself.