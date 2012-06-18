baselines
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec package: 'Sample-Core'.
            spec package: 'Sample-Tests' with: [ spec requires: 'Sample-Core' ].
            spec
                group: 'default' with: #('Core');
                group: 'Core' with: #('Sample-Core');
                group: 'Tests' with: #('Sample-Tests') ]