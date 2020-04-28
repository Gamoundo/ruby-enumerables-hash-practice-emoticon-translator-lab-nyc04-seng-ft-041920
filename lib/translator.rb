require "yaml"


def load_library(library)
  # code goes here
  emotions = YAML.load_file(library)
  loaded = {}
  emotions.each do |key, value|
    emotions[key] = {:english => value[0], :japanese => value[1]}
    loaded[key] = emotions[key]
  end
return  loaded
end

def get_japanese_emoticon(library, emoticon)
  # code goes here
  load_library(library)
end

def get_english_meaning
  # code goes here
end