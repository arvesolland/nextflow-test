#!/usr/bin/env nextflow

// params.outDir = '/home/_workflows/test7'

process foo {
  publishDir "$process.outDir" 

  output: 
  file 'hello'

  '''
  echo Hello > hello
  '''
}