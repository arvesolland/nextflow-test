#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
    publishDir '/home/_workflows/test2'
    echo true
    input: 
        val x from cheers
    script:
        """
        echo '$x world! from '
        hostname
        echo $PWD
        echo "Project : $workflow.projectDir"
        echo "Git info: $workflow.repository - $workflow.revision [$workflow.commitId]"
        echo "Cmd line: $workflow.commandLine"
        echo "Manifest's pipeline version: $workflow.manifest.version"
        """
}