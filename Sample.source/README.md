# baseline spec<a name="baseline"/>

Here's the **baseline spec** for the Sample project:

```Smalltalk
    spec
        for: #'common'
        do: [ 
            spec
                project: 'Seaside'
                with: [ 
                    spec
                        version: '3.0.6.3';
                        loads: #('Base' 'Seaside-Email');
                        repository: 'github://Seaside/Seaside30/Seaside.source' ].
            spec
                package: 'Sample-Core' with: [ spec requires: 'Seaside' ];
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ];
                yourself.
            spec
                group: 'default' with: #('Sample-Core');
                group: 'tests' with: #('Sample-Tests');
                yourself ]
```

# Metacello Project structure<a name="structure"/>
And here's the **Metacello project** directory structure for the Sample project:

<pre>
+-<strong>Sample</strong>.source/
  +-default.group/
  | +-<strong>Core</strong>.pkg/
  |   +-Core.tree/
  |   +-Core.spec
  +-Seaside.ref
  +-tests.group/
  | +-<strong>Tests</strong>.pkg/
  |   +-Tests.tree/
  |   +-Tests.spec
</pre>

In the directory structure above you see files and directories using the following extensions:

 * [.group](#group)
 * [.pkg](#pkg)
 * [.ref](#ref)
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

## .ref file<a name="ref"/>
## .tree directory<a name="tree"/>
## .spec file<a name="spec"/>
