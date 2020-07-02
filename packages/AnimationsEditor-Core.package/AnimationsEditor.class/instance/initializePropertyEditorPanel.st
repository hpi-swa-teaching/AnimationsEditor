initialize-release
initializePropertyEditorPanel
	self propertyEditorPanel: (self emptyPanels at: 2).
	self propertyEditorPanel getChildrenSelector: #propertyEditorPanelChildren.
	self propertyTreeMorph getChildrenSelector: #propertyList. 
