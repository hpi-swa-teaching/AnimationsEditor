initialize-release
buildWith: aBuilder
	toolBuilder := aBuilder.
	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: #animationsName;
			extent: 1000@700;
			children: {self buildPropertiesBarWith: aBuilder. "self buildPositionUIWith: aBuilder."}
			yourself).
