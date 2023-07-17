#!/usr/bin/env nextflow

project_dir = projectDir


process get_input_file {
  //output:
  //  path 'input.txt'

  """
  $project_dir/get_input_file.sh
  """
}

process create_result_file {
  //input:
  //  path 'input.txt'
  //output:
  //  stdout

  """
  $project_dir/create_result_file.sh
  """
}

workflow {
  get_input_file()
  create_result_file()
}
