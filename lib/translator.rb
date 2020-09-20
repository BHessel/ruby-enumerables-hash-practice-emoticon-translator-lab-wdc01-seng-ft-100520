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
  # code goes here
end

def get_english_meaning (emoticon_file, jpn_emoticon)
  eng_meaning = load_library(emoticon_file)
  e_mean_hash = {}
  eng_meaning.each do |name, jpn_emoticon|
    #e_mean_hash = {name => jpn_emoticon}
    e_mean_hash[name] = {jpn_emoticon[1]}
    binding.pry
end
  
 
#scan eng_meaning hash
#return the english word 
#return jpn emoticon, value [1]

end
