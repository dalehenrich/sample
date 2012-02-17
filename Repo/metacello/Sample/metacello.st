"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/foos1/users/dhenrich/smalltalk/sample'"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
      spec
          for: #'common'
          do: [ 
              spec 			package: 'Sample-Core' with: [ spec includes: 'Sample-Platform' ];			package: 'Sample-Platform' with: [ spec requires: 'Sample-Core' ];
             	package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ];			yourself.
              spec 			group: 'default' with: #('Sample-Core');			group: 'Tests' with: #('Sample-Tests');			yourself.		 ].	spec          for: #'pharo'
          do: [ 
              spec              	package: 'Sample-Platform' with: [ spec  file: 'Sample-Platform.pharo' ];
 			yourself.
		 ].	spec          for: #'squeak'
          do: [ 
              spec              	package: 'Sample-Platform' with: [ spec  file: 'Sample-Platform.squeak' ];
 			yourself.
		 ].	spec          for: #'gemstone'
          do: [ 
              spec              	package: 'Sample-Platform' with: [ spec  file: 'Sample-Platform.gemstone' ];
 			yourself.
		 ].	].
