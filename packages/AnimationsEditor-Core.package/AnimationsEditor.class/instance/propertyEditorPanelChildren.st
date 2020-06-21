accessing
propertyEditorPanelChildren
	propertyEditorPanelChildren
		ifNil: [self propertyEditorPanelChildren: OrderedCollection new].
		
	^ propertyEditorPanelChildren.