"Load and run tests to be performed by TravisCI"
| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"load the Sample tests"
Metacello new
	baseline: 'Sample';
  repository: 'filetree://', gitPath, '/sample/repository';
	load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSample' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

