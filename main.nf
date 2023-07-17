#!/usr/bin/env nextflow

project_dir = projectDir
container = 'library://mcenirm/tutorial/fortune-cowsay-lolcat:latest'

process get_input_file {
  """
  $project_dir/create_input_file.sh $project_dir/input.txt
  """
}

process create_result_file {

  """
  $project_dir/create_result_file.sh $project_dir/input.txt
  """
}

workflow {
  get_input_file()
  create_result_file()
}
