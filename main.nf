#!/usr/bin/env nextflow

project_dir = projectDir
container = 'library://mcenirm/tutorial/fortune-cowsay-lolcat:latest'

process get_input_file {

output: 
  path 'input.txt' 

  """
  $project_dir/create_input_file.sh input.txt
  """
}

process create_result_file {

  input: 
    path y

  output: 
    path 'result.txt' 

  """
  $project_dir/create_result_file.sh $y
  """
}

workflow {
  input_file_channel = get_input_file()
  create_result_file(input_file_channel)
}
