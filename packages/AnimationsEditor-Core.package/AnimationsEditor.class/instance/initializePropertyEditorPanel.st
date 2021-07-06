initialize-release
initializePropertyEditorPanel
	self propertyEditorPanel: (self ui emptyPanels at: self ui defaultPropertyPanelPosition).
	self propertyEditorPanel getChildrenSelector: #propertyEditorPanelChildren.
	self propertyTreeMorph getChildrenSelector: #propertyList. 
