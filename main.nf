#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    echo '$x world! from '
    hostname
    echo $PWD
    println "Project : $workflow.projectDir"
    println "Git info: $workflow.repository - $workflow.revision [$workflow.commitId]"
    println "Cmd line: $workflow.commandLine"
    println "Manifest's pipeline version: $workflow.manifest.version"
    """
}