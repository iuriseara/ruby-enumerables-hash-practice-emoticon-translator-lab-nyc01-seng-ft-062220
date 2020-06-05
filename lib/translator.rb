# require modules here
require 'yaml'

def load_library(library)
  # code goes
  data = YAML.load_file(library)
  get_meaning = {}
  get_emoticon = {}

  data.each do |key, value|
    get_meaning[value[1]] = key
    get_emoticon[value[0]] = value[1]
end

end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here

end

def get_english_meaning
  # code goes here
end
