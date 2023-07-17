#!/usr/bin/env nextflow

project_dir = projectDir

process get_input_file {
  //output:
  //  path 'input.txt'

  """
  $project_dir/create_input_file.sh $project_dir/input.txt
  """
}

process create_result_file {
  //input:
  //  path 'input.txt'
  //output:
  //  stdout

  """
  $project_dir/create_result_file.sh $project_dir/input.txt
  """
}

workflow {
  get_input_file()
  create_result_file()
}
