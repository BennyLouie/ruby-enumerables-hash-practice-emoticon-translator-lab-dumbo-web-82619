require "yaml"
require 'pry'

def load_library(library)
  emoticons = YAML.load_file(library)
  japanese_emoticon = {}
  english_emoticon = {}
  translations = {
  'get_meaning' => {},
  'get_emoticon' => {}
  }
  emoticons.each do |key, value|
    japanese_emoticon[value[1]] = key
    english_emoticon[value[0]] = value[1]
    translations['get_meaning'] = japanese_emoticon
    translations['get_emoticon'] = english_emoticon
  end
  translations
  binding.pry
end

def get_japanese_emoticon(western_emoticon)
  translate = load_library(library)
  translate.each do |key, value|
    if translatewestern_emoticon
      
end

def get_english_meaning
  # code goes here
end