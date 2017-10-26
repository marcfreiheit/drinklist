baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'Drinklist';
                package: 'Drinklist-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Drinklist');
                group: 'Tests' with: #('Drinklist-Tests') ]