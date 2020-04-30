baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
            spec baseline: 'Animations' with: [
                spec repository: 'github://hpi-swa/animations:master/repository'].

			spec
				package: 'AnimationsEditor-Core';
				package: 'AnimationsEditor-Tests' with: [spec requires: #('AnimationsEditor-Core')];
				yourself.
			spec
				group: 'default' with: #('AnimationsEditor-Core');
				group: 'tests' with: #('AnimationsEditor-Tests')];
				yourself