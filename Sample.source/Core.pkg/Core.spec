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
