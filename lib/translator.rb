# require modules here
require 'yaml'

def load_library(library)
  # code goes

  meaning = {}
  emoticon = {}

  data.each do |key, value|
    meaning[value[1]] = key
    emoticon[value[0]] = value[1]
end

  new_data = {
    get_meaning: meaning,
    get_emoticon: emoticon
  }
  new_data
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  data = YAML.load_file(library)

  japanese_emoticon = data[:get_emoticon].values_at(emoticon).join

  if japanese_emoticon.length < 1
    puts "Sorry, that emoticon was not found"
  else
    japanese_emoticon
end

def get_english_meaning
  # code goes here
end
