initialize-release
buildSettingsDropdownWith: aBuilder
	| setting sub |
	setting := AnimationsEdtiorSetting new.
	setting title: 'Morph'.
	
	sub := AnimationsEdtiorSetting new.
	sub title: 'Position'.
	
	setting subtopics add: sub.
	taskList add: setting.
	^ aBuilder pluggableTreeSpec new
			model: self;
			nodeClass: AnimationsEditorSettingsItem;
			roots: #taskList;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.	 		