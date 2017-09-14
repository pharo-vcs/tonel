baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: #'MonticelloTonel-Core';
			package: #'MonticelloTonel-FileSystem' with: [ spec requires: #('MonticelloTonel-Core') ];
			package: #'MonticelloTonel-Tests'.
		
		spec 
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('MonticelloTonel-Core' 'MonticelloTonel-FileSystem');
			group: 'tests' with: #('MonticelloTonel-Tests') ]