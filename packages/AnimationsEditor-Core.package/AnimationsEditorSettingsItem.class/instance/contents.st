as yet unclassified
contents
	^ self item subtopics sorted collect: [ :each | 
			AniEditorSettingsItem with: each model: self model]