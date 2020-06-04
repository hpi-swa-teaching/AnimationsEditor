accessing
animationStore
	animationStore 
		ifNil: [animationStore := Dictionary new].
		
	^ animationStore.