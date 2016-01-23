# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

startjapan = Course.create(title: "Démarrez le japonais")

firstpart = startjapan.chapters.create(title: "À la découverte de la langue japonaise")

# first item is a lesson

firstpart.items << Lesson.create(title: "Le japonnais, c'est facile", content: "Lesson content here")

# a second lesson

firstpart.items << Lesson.create(title: "L'alphabet japonnais", content: "Lesson content here")

# a third lesson

firstpart.items << Lesson.create(title: "La phrase japonnaise", content: "Lesson content here")


# then 1st exo

firstpart.items << Exercise.create(title: "Reconstituer les phrases", content: "Exo about the third lessons")


# a fourth lesson

firstpart.items << Lesson.create(title: "Première approche des Hiraganas", content: "Lesson content here")


# a fifth lesson

firstpart.items << Lesson.create(title: "Première approche des Katakanas", content: "Lesson content here")


# an entract lesson / Create an Entract Act_As

firstpart.items << Lesson.create(title: "La petite histoire de la tasse de thé qui allait déborder", content: "Lesson content here")


# a sixth lesson

firstpart.items << Lesson.create(title: "Première approche des Kanjis", content: "Lesson content here")


# then 2nd exo

firstpart.items << Exercise.create(title: "Distinguer les Hiraganas, les Katakanas et les Kanjis", content: "Exo about the third lessons")


# a seventh lesson

firstpart.items << Lesson.create(title: "Les particules", content: "Lesson content here")


# a eighth lesson

firstpart.items << Lesson.create(title: "Les temps", content: "Lesson content here")


# a ninth lesson

firstpart.items << Lesson.create(title: "Les genres", content: "Lesson content here")


# then Revision = Résumé

firstpart.items << Exercise.create(title: "Révisions", content: "Exo about the third lessons")

# an Exam

firstpart.items << Exam.create(title: "Petit Quiz", content: "Exam content here")


puts "done"
