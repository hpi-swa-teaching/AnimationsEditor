initialize-release
initializePropertyEditorPanel
	self propertyEditorPanel: (self emptyPanels at: self defaultPropertyPanelPosition).
	self propertyEditorPanel getChildrenSelector: #propertyEditorPanelChildren.
	self propertyTreeMorph getChildrenSelector: #propertyList. 
