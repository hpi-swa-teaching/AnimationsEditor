buildComponents
buildActivateButtonWith: aBuilder 

	
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Animate this property';
		 action: #activateProperty;
		 
		 yourself.