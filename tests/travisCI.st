"Load the Sample tests ... travis has already done a `git clone`"
| gitPath |
false 
  ifTrue: [ "Tie Transcript to stdout and skip retry logic"
    FileDirectory default 
      fileNamed: 'FileStream-show.st'
      do: [:fileStream | fileStream fileIn ].
    (Smalltalk associationAt: #Transcript) value: FileStream stdout.
    Transcript cr; show: 'Loading Sample....' ].

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

