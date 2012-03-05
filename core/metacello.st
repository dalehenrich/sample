"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/sample/core/'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
    spec
        for: #'common'
        do: [ 
            spec
                project: 'External'
                with: [ 
                    spec repository: 'github://dalehenrich/external/core' ].
            spec
                package: 'Sample-Core' with: [ spec requires: 'External' ];
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ] ].
    spec
        for: #'gemstone'
        do: [ 
            spec package: 'Sample-Core' with: [ spec includes: 'Sample-Platform.gemstone' ].
            spec package: 'Sample-Platform.gemstone' with: [ spec requires: 'Sample-Core' ] ].
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Core' with: [ spec includes: 'Sample-Platform.pharo' ].
            spec package: 'Sample-Platform.pharo' with: [ spec requires: 'Sample-Core' ] ].
    spec
        for: #'squeak'
        do: [ 
            spec package: 'Sample-Core' with: [ spec includes: 'Sample-Platform.squeak' ].
            spec package: 'Sample-Platform.squeak' with: [ spec requires: 'Sample-Core' ] ] ].
