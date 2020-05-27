initialize-release
buildWith: aBuilder

	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: #animationsName;
			extent: 1000@700;
			children: {self buildButtonBarWith: aBuilder.
						  self buildPropertiesTreeWith: aBuilder.
						  self buildTimeline: aBuilder.
						  self buildInformationBarWith: aBuilder.}
			yourself).
