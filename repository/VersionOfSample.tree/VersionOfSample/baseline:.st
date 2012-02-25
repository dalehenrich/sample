
!VersionOfSample methodsFor: 'baseline'!
baseline: spec
    spec
        for: #'common'
        do: [ 
            spec
                project: 'Seaside30'
                with: [ 
                    spec
                        version: '3.0.6.3';
                        repository: 'github://Seaside/Seaside30/Seaside.source' ].
            spec spec
                package: 'Sample-Core'
                    with: [ 
                            spec
                                requires: 'Seaside30' with: #('Base' 'Seaside-Email');
                                groups: #('Base') ];
                package: 'Sample-Tests'
                    with: [ 
                            spec
                                requires: 'Sample-Core';
                                groups: #('Tests') ].
            spec
                group: 'default' with: #('Base');
                group: 'Base' with: #('Sample-Core');
                group: 'Tests' with: #('Sample-Tests').
            spec
                for: #'gemstone'
                do: [ 
                    spec package: 'Sample-Core' includes: 'Sample-Platform.gemstone'.
                    spec package: 'Sample-Platform.gemstone' with: [ spec requires: 'Sample-Core' ] ].
            spec
                for: #'pharo'
                do: [ 
                    spec package: 'Sample-Core' includes: 'Sample-Platform.pharo'.
                    spec package: 'Sample-Platform.pharo' with: [ spec requires: 'Sample-Core' ] ].
            spec
                for: #'squeak'
                do: [ 
                    spec package: 'Sample-Core' includes: 'Sample-Platform.squeak'.
                    spec package: 'Sample-Platform.squeak' with: [ spec requires: 'Sample-Core' ] ] ]! !
