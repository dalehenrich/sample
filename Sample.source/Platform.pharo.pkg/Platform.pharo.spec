"
package: spec name: name
    <project: 'NameOfProject' package: 'NameOfPackage'>
"
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Core' includes: name.
            spec package: name with: [ spec requires: 'Sample-Core' ] ]
