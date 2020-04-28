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
  emotions = load_library(library)
  emotions.each do |key, value|
    if emotions[key][:english] == emoticon
      return emotions[key][:japanese]
  end
  
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(library, emoticon)
  # code goes here
   emotions = load_library(library)
  emotions.each do |key, value|
    if emotions[key][:japanese] == emoticon
      return emotions[key]
  end
  
  end
end