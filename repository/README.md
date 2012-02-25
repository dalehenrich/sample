The **VersionOfSample** is a variant on the ConfigurationOfxxx configuration file used for classic Metacello configurations.
With a disk-based repository, it isn't necessary for version information to be recorded in the configuration. All that is really needed is the basic *baseline* structure:

```Smalltalk
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
                    spec package: 'Sample-Platform.squeak' with: [ spec requires: 'Sample-Core' ] ] ]
```

The experiment currently under consideration is to distribute the package specifications into the .pkg directory, so the package spec for the Core package would look like the following:

```Smalltalk
"
packageCore: spec name: name
    <project: 'Sample' package: 'Core'>
"
    spec
        for: #'common'
        do: [ 
            spec
                package: name
                with: [ 
                    spec
                        requires: 'Seaside30' with: #('Base' 'Seaside-Email');
                        groups: #('Base') ] ]
```

For the Smalltalk developer, we need to have an artifact that can be manipulated from within the image. 

I'm looking at the VersionOfSample class to be that artifact.
