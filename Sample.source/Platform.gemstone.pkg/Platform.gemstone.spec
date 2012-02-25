"
package: spec name: name
    <project: 'NameOfProject' package: 'NameOfPackage'>
"
    spec
        for: #'gemstone'
        do: [ 
            spec package: 'Core' includes: name.
            spec package: name with: [ spec requires: 'Core' ] ]
