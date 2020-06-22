initialize-release
testNewProject
	| animationsEditorInstance |
	animationsEditorInstance := AnimationsEditor openNewProject: 'Hasenanimation'.
	self assert: (animationsEditorInstance = nil) not.
	self assert: (animationsEditorInstance label contents = 'Hasenanimation').
	animationsEditorInstance abandon.