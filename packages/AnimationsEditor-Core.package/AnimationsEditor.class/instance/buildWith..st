initialize-release
buildWith: aBuilder

	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: #animationsName;
			extent: 1000@700;
			children: {self buildPropertiesBarWith: aBuilder . self buildTimeline: aBuilder}
			yourself).
