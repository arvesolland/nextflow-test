#!/usr/bin/env nextflow

// params.outDir = '/home/_workflows/test7'

process foo {
  publishDir "$params.outDir" 

  output: 
  file 'hello'

  '''
  echo Hello > hello
  '''
}