# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.find_or_create_by(nombre: "Llama", descripcion: "Chupa sangre",duracion: "1", estado: "t")
Article.find_or_create_by(nombre: "King Kong", descripcion: "Es un gorila gigante",duracion: "1", estado: "t")
Article.find_or_create_by(nombre: "Nahuelito", descripcion: "Vive en el Nahuel Huapi",duracion: "14", estado: "t")
Article.find_or_create_by(nombre: "Hombre lobo", descripcion: "Mitad lobo - mitad humano",duracion: "7", estado: "t")
