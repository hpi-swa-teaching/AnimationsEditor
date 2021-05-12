safeJson
dictionaryToJson: aDictionary
	^ String streamContents: [ :stream |
   		(STON writer on: stream)
      		prettyPrint: true;
      		jsonMode: true;
      		referencePolicy: #error;
      		nextPut: aDictionary ].