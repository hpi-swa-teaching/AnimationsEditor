accessing
createAnimationFor: aMorph withDuration: aNumber
	| orderedColl lastKey lastColor|
	
	self targetColors: (self targetColors associations sort: #key ascending) asDictionary.
	
	orderedColl := OrderedCollection new.
	lastKey := 0.
	lastColor := aMorph color.
	self targetDuration: aNumber.
	self targetColors keysAndValuesDo: [:key :value | orderedColl 
		add:  
		(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 1.0;
				endValue: 0.0;
				duration: ((key-lastKey)//2);
				finishBlock: [aMorph color: value.]);
		 add:
		(AnimAlphaBlendAnimation new
				morph: aMorph;
				startValue: 0.0;
				endValue: 1.0;
				duration: ((key-lastKey)//2);
				finishBlock: [aMorph color: lastColor.]).
				
				lastKey := key.
				lastColor := value.
				].
	^ orderedColl.