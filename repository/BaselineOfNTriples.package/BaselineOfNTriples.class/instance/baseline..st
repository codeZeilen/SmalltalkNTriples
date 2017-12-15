as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: [
					spec repository: 'github://hpi-swa/ohm-s/packages'];
				package: 'NTriples-Core' with: [spec requires: #('libraries')];
				package: 'NTriples-Tests' with: [spec requires: #('core')];
				yourself.
			spec
				group: 'default' with: #('NTriples-Core');
				group: 'core' with: #('NTriples-Core');
				group: 'libraries' with: #('Ohm')];
				yourself