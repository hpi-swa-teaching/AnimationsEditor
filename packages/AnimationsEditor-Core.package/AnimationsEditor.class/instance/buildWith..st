initialize-release
buildWith: aBuilder
	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: 'Animation Editor';
			extent: 1000@700;
			children: {self buildPropertiesBarWith: aBuilder}
			yourself).
