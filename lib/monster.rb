#Class larves
class Monstre_larve
  def initialize
    #recuperation de l'api
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  #ecriture des données dans un fichier json
  def to_json_monstre01
  	puts "Recuperation liste des larves..."
  	sleep 2
    File.open("./db/monstre_larve.json", 'w') do |file|
      file.write(@type)
    end
    puts "Liste des larves enregister dans  le repertoire 'db/monstre_larve.json'"
  end
end

#Class Monstre des cavernes
class Monstre_caverne
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def to_json_monstre02
  	puts "\nRecuperation liste des monstre des cavernes..."
  	sleep 2
    File.open("./db/monstre_caverne.json", 'w') do |file|
      file.write(@type)
    end
    puts "Liste des larves enregister dans  le repertoire 'db/monstre_caverne.json'"
  end
end

#Class Monstre des plaine herbeuse
class Monstre_plaine_herbeuse
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def to_json_monstre03
  	puts "\nRecuperation liste des monstre des plaines..."
  	sleep 2
    File.open("./db/monstre_plaine_herbeuse.json", 'w') do |file|
      file.write(@type)
    end
    puts "Liste des larves enregister dans  le repertoire 'db/monstre_plaine_herbeuse.json'"
  end
end
