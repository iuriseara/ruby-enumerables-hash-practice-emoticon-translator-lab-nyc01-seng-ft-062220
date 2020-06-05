# require modules here
require 'yaml'

def load_library(file)
  # code goes
  data = YAML.load_file(file)

  meaning = {}
  emoticon = {}

  data.each do |k, v|
    meaning[v[1]] = k
    emoticon[v[0]] = v[1]
end

  new_data = {
    get_meaning: meaning,
    get_emoticon: emoticon
  }
  return new_data
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  data = load_library(file_path)

  japanese_emoticon = data[:get_emoticon].values_at(emoticon).join

  if japanese_emoticon.length < 1
    puts "Sorry, that emoticon was not found"
  else
    return japanese_emoticon
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  data = load_library(file_path)

  meaning = data[:get_meaning].values_at(emoticon).join

  if meaning.length < 1
    puts "Sorry, that emoticon was not found"
  else
   return meaning
  end
end
