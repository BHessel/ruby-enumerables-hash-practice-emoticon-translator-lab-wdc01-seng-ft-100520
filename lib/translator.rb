require 'pry'
require 'yaml'

def load_library (emoticon_file)
  require "yaml"
  emoticons = YAML.load_file(emoticon_file)
  emo_hash = {}
  result_hash = {}
  emoticons.each do |key, value|
    emo_hash = {key => value}
    result_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  result_hash
end


def get_japanese_emoticon
  
  #input of eng emoticon
  #output of japanese emoticon 
end

def get_english_meaning (emoticon_file, jpn_emoticon)
  eng_meaning = load_library (emoticon_file)
  meaning = eng_meaning.find do |name, languages|
    languages[:japanese] == jpn_emoticon
  end

  if meaning == nil
    "Sorry, that emoticon was not found"
  else
    meaning[0]
  end
end
