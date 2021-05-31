eventHandling
targetColorAsRgbString
	 ^ (self targetColor red * 255) rounded asString, ',', (self targetColor green * 255) rounded asString, ',', (self targetColor blue * 255) rounded asString