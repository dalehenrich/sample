Here's the **Metacello spec** for this project:

```Smalltalk
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Sample-Core' with: [ spec includes: 'Sample-Platform' ];
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ];
                yourself.
            spec
                group: 'default' with: #('Sample-Core');
                group: 'tests' with: #('Sample-Tests');
                yourself ].
    spec
        for: #'gemstone'
        do: [ 
            spec
                package: 'Sample-Platform.gemstone' with: [ spec requires: 'Sample-Core' ];
                group: 'platform' with: #('Sample-Platform.gemstone') ].
    spec
        for: #'pharo'
        do: [ 
            spec
                package: 'Sample-Platform.pharo' with: [ spec requires: 'Sample-Core' ];
                group: 'platform' with: #('Sample-Platform.pharo') ].
    spec
        for: #'squeak'
        do: [ 
            spec
                package: 'Sample-Platform.squeak' with: [ spec requires: 'Sample-Core' ];
                group: 'platform' with: #('Sample-Platform.squeak') ]
```

And here's the **Metacello project** directory structure:

<pre>
+-<strong>Sample</strong>.source/
  +-default.group/
  | +-<strong>Core</strong>.pkg/
  |   +-Core.tree/
  |   +-Core.spec
  +-platform.group/
  | +-<strong>Platform.gemstone</strong>.pkg/
  |   +-Platform.gemstone.spec
  |   +-Platform.gemstone.tree/
  | +-<strong>Platform.pharo</strong>.pkg/
  |   +-Platform.pharo.spec
  |   +-Platform.pharo.tree/
  | +-<strong>Platform.squeak</strong>.pkg/
  |   +-Platform.squeak.spec
  |   +-Platform.squeak.tree/
  +-tests.group/
  | +-<strong>Tests</strong>.pkg/
  |   +-Tests.tree/
  |   +-Tests.spec
</pre>

In the directory structure above you see files and directories using the following extensions:

 * [.group](#group)
 * [.pkg](#pkg)
 * [.tree](#tree)
 * [.spec](#spec)

## .group directory<a name="group"/>
The **.group** directory is optional. 

If a **.pkg** directory is located in a **.group** directory, then the package 
becomes a member of the group. Therefore by including the *Core.pkg* directory in the *default.group* directory:

```
+-Sample.source/
  +-default.group/
  | +-Core.pkg/
```

The package *Sample-Core* is included in the default group, which is equivalent to specifying the following:

```Smalltalk
spec group: 'default' with: #('Sample-Core')
```

## .pkg directory<a name="pkg"/>
The **.pkg** directory defines a **Metacello package**.

The **.pkg** directory contains a **.spec** and a **.tree** directory.

### Package naming<a name="pkgnaming"/>
The full name of the package is derived from the directory structure. **.group** directories are 
ignored for the puposes of naming packages. So the following directory structure:

<pre>
+-<strong>Metacello</strong>.source/
  +-default.group/
  | +-<strong>Core</strong>.pkg/
</pre>

specifies a package named *Metacello-Core*.

## .tree directory<a name="tree"/>
## .spec file<a name="spec"/>
