initialize-release
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new
								model: self;
								label: self label;
					 			extent: 300 @ 125;
								children: (self buildAllChildren: aBuilder);
					 			yourself).