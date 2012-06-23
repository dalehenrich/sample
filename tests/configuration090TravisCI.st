"Load the version 0.9.0 of Sample from a configuration"
Metacello new
  configuration: 'Sample';
  version: '0.9.0';
  repository: 'github://dalehenrich/sample:configuration';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSample' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

