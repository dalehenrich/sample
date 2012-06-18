baselines
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'Sample-Core'.
            spec package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ] ]