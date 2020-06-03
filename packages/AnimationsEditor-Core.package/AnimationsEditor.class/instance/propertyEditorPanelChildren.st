accessing
propertyEditorPanelChildren
	propertyEditorPanelChildren == nil
		ifTrue: [ self propertyEditorPanelChildren: OrderedCollection new.].
		
	^ propertyEditorPanelChildren.