initialize-release
initializePropertyEditorPanel
	self flag:#TODO.
	"The second found empty panel is the property panel"
	self propertyEditorPanel: (self emptyPanels at: 2).
	self propertyEditorPanel getChildrenSelector: #propertyEditorPanelChildren.
	self propertyTreeMorph getChildrenSelector: #propertyList. 
