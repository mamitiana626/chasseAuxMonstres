require_relative 'lib/monster'
require 'bundler'
Bundler.require

#instantiation de Monstre_larve 
monstre01 = Monstre_larve.new
monstre01.to_json_monstre01

#instantiation de Monstre_caverne 
monstre02 = Monstre_caverne.new
monstre02.to_json_monstre02

#instantiation de Monstre_plaine_herbeuse 
monstre03 = Monstre_plaine_herbeuse.new
monstre03.to_json_monstre03