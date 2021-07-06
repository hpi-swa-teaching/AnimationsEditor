saveJson
writeJsonToFile: aJsonString with: aDirectory
	aDirectory
		ifNotNil: [
            	FileDirectory default forceNewFileNamed: aDirectory do: [:stream |
            	stream nextPutAll: aJsonString].
		]