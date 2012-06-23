"Load the #stable version of Sample from a configuration"
Metacello new
  configuration: 'Sample';
  version: #stable;
  repository: 'github://dalehenrich/sample:configuration';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSample' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

