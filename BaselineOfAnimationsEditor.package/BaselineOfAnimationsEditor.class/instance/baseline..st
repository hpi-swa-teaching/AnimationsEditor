baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'AnimationsEditor-Core';
				package: 'AnimationsEditor-Tests' with: [spec requires: #('AnimationsEditor-Core')];
				yourself.
			spec
				group: 'default' with: #('AnimationsEditor-Core');
				group: 'tests' with: #('AnimationsEditor-Tests')];
				yourself