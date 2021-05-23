saveJson
writeJsonToFile: aJsonString with: aDirectory
	aDirectory
		ifNotNil: [
            	FileDirectory default forceNewFileNamed: aDirectory, '.json' do: [:stream |
            	stream nextPutAll: aJsonString].
		]