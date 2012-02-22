Here's the **Metacello spec** for this project:

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

And here's the **Metacello project** directory structure:

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

In the directory structure above you see files and directories using the following extensions:

 * [.group](#group)
 * [.pkg](#pkg)
 * [.tree](#tree)
 * [.spec](#spec)

## .group directory<a name="group"/>
The **.group** directory is optional. If a **.pkg** directory is located in a **.group** directory, then the package 
becomes a member of the group. Therefore by including the *Core.pkg* directory in the *default.group* directory:

```
+-Sample.source/
  +-default.group/
  | +-Core.pkg/
```

The package Sample-Core is included in the default group, which is equivalent to specifying the following:

```Smalltalk
spec group: 'default' with: #('Sample-Core')
```

Note that the full name of the package is derived from the directory structure. .group directories are 
ignored for the puposes of naming packages. So the following directory structure:

<pre>
+-<strong>Metacello</strong>.source/
  +-default.group/
  | +-<strong>Core</strong>.pkg/
</pre>

specifies a package named 'Metacello-Core'.

## .pkg directory<a name="pkg"/>
## .tree directory<a name="tree"/>
## .spec file<a name="spec"/>
