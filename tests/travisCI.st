"Load the Sample tests ... travis has already done a `git clone`"
| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.
Metacello new
  baseline: 'Sample';
  repository: 'filetree://', gitPath, '/sample/repository';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSample' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

