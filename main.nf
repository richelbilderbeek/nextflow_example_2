process get_input_file {
  //output:
  //  path 'input.txt'

  """
  get_input_file.sh.sh
  """
}

process create_result_file {
  //input:
  //  path 'input.txt'
  //output:
  //  stdout

  """
  create_result_file.sh
  """
}

workflow {
  get_input_file()
  create_result_file()
}
