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
                        requires: 'Core';
                        groups: #('Tests') ] ]
