#!/usr/bin/env nextflow

params.outDir = 'output'

process foo {
  publishDir "$params.outDir" 

  output: 
  file 'hello'

  '''
  echo Hello > hello
  '''
}