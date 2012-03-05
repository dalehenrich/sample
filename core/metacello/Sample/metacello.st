"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/sample/core/metacello/Sample/'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
    spec
        for: #'common'
        do: [ 
            spec
                github: 'External'
                with: [ 
                    spec repository: 'github://dalehenrich/external/core' ].
            spec
                package: 'Sample-Core' with: [ 
                    spec
                        requires: 'External';
                        includes: 'Sample-Platform' ]; 
                package: 'Sample-Platform' with: [ spec requires: 'Sample-Core' ];
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ] ].
    spec
        for: #'gemstone'
        do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.gemstone' ] ].
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.pharo' ] ].
    spec
        for: #'squeak'
        do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.squeak' ] ] ].
