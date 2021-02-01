#!/usr/bin/env nextflow

params.outDir = process.outDir

process foo {
  publishDir "$params.outDir" 

  output: 
  file 'hello'

  '''
  echo Hello > hello
  '''
}