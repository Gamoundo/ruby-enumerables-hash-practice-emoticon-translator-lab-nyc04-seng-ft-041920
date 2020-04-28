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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end