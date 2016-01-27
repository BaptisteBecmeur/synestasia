# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

startjapan = Course.where(title: "Démarrez le japonais").first_or_create

firstpart = startjapan.chapters.where(title: "À la découverte de la langue japonaise").first_or_create

# first item is a lesson

firstpart.items << Lesson.where(title: "Le japonnais, c'est facile").first_or_create(title: "Le japonnais, c'est facile", content: "Lesson content here")

# a second lesson

firstpart.items << Lesson.where(title: "L'alphabet japonnais").first_or_create(title: "L'alphabet japonnais", content: "Lesson content here")

# a third lesson

firstpart.items << Lesson.where(title: "La phrase japonnaise").first_or_create(title: "La phrase japonnaise", content: "Lesson content here")


# then 1st exo

firstpart.items << Exercise.where(title: "Reconstituer les phrases").first_or_create(title: "Reconstituer les phrases", content: "Exo about the third lessons")


# a fourth lesson

firstpart.items << Lesson.where(title: "Première approche des Hiraganas").first_or_create(title: "Première approche des Hiraganas", content: "Lesson content here")


# a fifth lesson

firstpart.items << Lesson.where(title: "Première approche des Katakanas").first_or_create(title: "Première approche des Katakanas", content: "Lesson content here")


# an entract lesson / Create an Entract Act_As

firstpart.items << Lesson.where(title: "La petite histoire de la tasse de thé qui allait déborder").first_or_create(title: "La petite histoire de la tasse de thé qui allait déborder", content: "Lesson content here")


# a sixth lesson

firstpart.items << Lesson.where(title: "Première approche des Kanjis").first_or_create(title: "Première approche des Kanjis", content: "Lesson content here")


# then 2nd exo

firstpart.items << Exercise.where(title: "Distinguer les Hiraganas, les Katakanas et les Kanjis").first_or_create(title: "Distinguer les Hiraganas, les Katakanas et les Kanjis", content: "Exo about the third lessons")


# a seventh lesson

firstpart.items << Lesson.where(title: "Les particules").first_or_create(title: "Les particules", content: "Lesson content here")


# a eighth lesson

firstpart.items << Lesson.where(title: "Les temps").fist_or_create(title: "Les temps", content: "Lesson content here")


# a ninth lesson

firstpart.items << Lesson.where(title: "Les genres").first_or_create(title: "Les genres", content: "Lesson content here")


# then Revision = Résumé

firstpart.items << Exercise.where(title: "Révisions").first_or_create(title: "Révisions", content: "Exo about the third lessons")

# an Exam

firstpart.items << Exam.where(title: "Petit Quiz").first_or_create(title: "Petit Quiz", content: "Exam content here")


puts "done"
