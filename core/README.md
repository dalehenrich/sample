## Monticello Package Structure for file-based repositories

<pre>
+-core/
  +-Sample-Core.pkg\
    +-snapshot\
    | +-classes\
    | | +-SampleCore.class\
    | |   +-instance-side\
    | |     +-SampleCore.st
    | |     +-author.st
    | +-extensions\
    |   +-Object.class\
    |     +-instance-side\
    |       +-isSample.st
    +-.filetree
    +-package
    +-version
</pre>
  
The [**.pkg**](Sample-Core.pkg) directory is the root of the package structure. 
The **.filetree**, **package**, and **version** files contain package meta data.

The [**snapshot**](Sample-Core.pkg/snapshot) directory contains the Monticello definitions. 
The [**extensions**](Sample-Core.pkg/snapshot/extensions) 
subdirectory contains the extension method definitions organized by class
and the [**classes**](Sample-Core.pkg/snapshot/classes) subdirectory contains the class and method definitions organized by class.

Here is an example of an [extension method for the class Object](Sample-Core.pkg/snapshot/extensions/Object.class/instance-side/isSample.st).

Here is an example of a [class definition for the class SampleCore](Sample-Core.pkg/snapshot/extensions/SampleCore.class/instance-side/SampleCore.st) 
and a [method
definition for the class SampleCore](Sample-Core.pkg/snapshot/extensions/SampleCore.class/instance-side/authorName.st).
