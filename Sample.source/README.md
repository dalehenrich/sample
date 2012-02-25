# Metacello project structure for mcz-based projects<a name="monticello"/>
Right now, a Monticello project is composed of a Metacello configuration package and a collection of the packages that contain the source code of the project.

The source code is stored in a Monticello repository.
The Monticello repository has a flat directory structure with a file for each version 
of the packages. There is no structure to a Monticello repository:

<pre>
+-Monticello repository/
  | +-<strong>ConfigurationOfSample-dkh.1</strong>.mcz/
  | +-<strong>ConfigurationOfSample-dkh.2</strong>.mcz/
  | +-<strong>ConfigurationOfSample-dkh.3</strong>.mcz/
  | +-<strong>Sample-Core-dkh.1</strong>.mcz/
  | +-<strong>Sample-Core-dkh.2</strong>.mcz/
  | +-<strong>Sample-Core-dkh.3</strong>.mcz/
  | +-<strong>Sample-Core-dkh.4</strong>.mcz/
  | +-<strong>Sample-Tests-dkh-1</strong>.mcz/
  | +-<strong>Sample-Tests-dkh-2</strong>.mcz/
</pre>

The project structure is provided by the baseline version specification:

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
                package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ].
            spec
                group: 'default' with: #('Base');
                group: 'Base' with: #('Sample-Core');
                group: 'Tests' with: #('Sample-Tests') ]
```

The specification defines required projects, package dependencies and package groupiungs.

# Metacello Project structure for git-based projects<a name="git"/>

In a git-based project it makes sense to 
use the file system to define project structure. 
Besides using directory structure for packages 
we can use directories to define Metacello groups and packages.
With packages defined in a directory structure, we can include additional information 
(like required packages and projects) in the package 
directory itself.

By combining the Metacello specifications with the classic Monticello package information, there is no longer a need to 
manage a completely separate file of project meta information (ConfigurationOfSample).

To start with, we'll used file extensions to denote the different structural elements of the project:

 * [.group](#group) - group specification
 * [.pkg](#pkg) - Metacello package 
 * [.ref](#ref) - external project reference
 * [.source](#source) - project root
 * [.tree](#tree) - Monticello package
 * [.spec](#spec) - Metacello meta information

Here's the Metacello project structure for the Sample project described earlier: 

<pre>
+-<strong>Sample</strong>.source/
  +-default.group
  +-<strong>Core</strong>.pkg/
  | +-Core.tree/
  | +-Core.spec
  +-Seaside.ref
  +-<strong>Tests</strong>.pkg/
  | +-Tests.tree/
  | +-Tests.spec
</pre>

The **Sample.source** directory is the root of the project. 

The **Core.pkg** defines a package whose full name is **Sample-Core**. The package name is 
constructed from the project root name and the base name of the **.pkg** directory.

The **Core.tree** directory contains the Monticello package source, the details of which are covered in a separate project (see the [FileTree project][1]).

The **Core.spec** file contains the Metacello specification for the package:

```Smalltalk
"
package: spec name: name
    <project: 'NameOfProject' package: 'NameOfPackage'>
"
    spec
        for: #'common'
        do: [
            spec
                package: name
                with: [
                    spec
                        requires: 'Seaside' with: #('Base' 'Seaside-Email');
                        groups: #('Base') ] ]

```

The spec indicates that the **Core.pkg** depends upon the *Base* and *Seaside-Email* packages from the *Seaside* project
and that the package is a member of the 'Base' group.

The **Seaside.ref** file contains the Metcello specification for the *Seaside* project:

```Smalltalk
"
project: spec name: name
    <project: 'NameofProject' reference: 'NameOfFile'>
"
    spec
        for: #'common'
        do: [
            spec
                projectReference: name
                with: [
                    spec
                        version: '3.0.6.3';
                        repository: 'github://Seaside/Seaside30/Seaside30.source' ] ]

```

The spec indicates that the **Seaside.ref** project is defined on github in the 
https://github.com/Seaside/Seaside30 project, that version '3.0.6.3' (a tag, branch, or commit SHA) should be used, and
that the project source is in the *Seaside30.source* directory.

The **default.group** file contains additional group specifications:

```Smalltalk
"
group: spec name: name
    <project: 'ProjectName' group: 'groupName'>
"
    spec for: #'common' do: [ spec group: name with: #('Base') ]
```

# Appendix

## .group file<a name="group"/>
## .pkg directory<a name="pkg"/>
The **.pkg** directory defines a **Metacello package**.

The **.pkg** directory contains a **.spec** file and a **.tree** directory.

### Package naming<a name="pkgnaming"/>
The full name of the package is derived from the directory structure. 
So the following directory structure:

<pre>
+-<strong>Metacello</strong>.source/
  +-<strong>Core</strong>.pkg/
</pre>

specifies a package named *Metacello-Core*.

## .ref file<a name="ref"/>
## .source directory<a name="source"/>
## .tree directory<a name="tree"/>
## .spec file<a name="spec"/>



[1]: https://github.com/dalehenrich/filetree


