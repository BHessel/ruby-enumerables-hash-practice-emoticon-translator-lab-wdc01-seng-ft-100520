require 'pry'
require 'yaml'

def load_library (emotican_file)
  require "yaml"
  emoticons = YAML.load_file(emotican_file)
  emo_hash = {}
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end