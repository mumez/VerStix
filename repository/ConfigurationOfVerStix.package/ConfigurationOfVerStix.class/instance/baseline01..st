baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/VerStix/main/'.
		spec project: 'Stick' with: [
				spec
					className: #ConfigurationOfStick;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Stick/main/'].
		spec project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/'].
		spec package: #'VerStix-Core'.
		spec group: 'Core' with: #(#'VerStix-Core' ). ].
