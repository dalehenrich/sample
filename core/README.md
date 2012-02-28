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
