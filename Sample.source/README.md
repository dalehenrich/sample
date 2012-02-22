Here's the metacello spec for this project:

```Smalltalk
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Sample-Core' with: [ spec includes: 'Sample-Platform' ];
                package: 'Sample-Platform' with: [ spec requires: 'Sample-Core' ];
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ];
                yourself.
            spec
                group: 'default' with: #('Sample-Core');
                group: 'platform' with: #('Sample-Platform');
                group: 'tests' with: #('Sample-Tests');
                yourself ].
    spec for: #'gemstone' do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.gemstone' ] ].
    spec for: #'pharo' do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.pharo' ] ].
    spec for: #'squeak' do: [ 
            spec package: 'Sample-Platform' with: [ spec file: 'Sample-Platform.squeak' ] ]
```

And here's the directory structure:

```
+-Sample.source/
  +-default.group/
  | +-Core.pkg/
  |   +-Core.tree/
  |   +-Core.spec
  +-platform.group/
  | +-platform.spec
  | +-Platform.gemstone.pkg/
  |   +-Platform.gemstone.tree/
  | +-Platform.pharo.pkg/
  |   +-Platform.pharo.tree/
  | +-Platform.squeak.pkg/
  |   +-Platform.squeak.tree/
  +-tests.group/
  | +-Tests.pkg/
  |   +-Tests.tree/
  |   +-Tests.spec
```