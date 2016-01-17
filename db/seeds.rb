# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rails = Course.create(title: "Hiragana")

models = rails.chapters.create(title: "Introduction")

# first item is a lesson
models.items << Lesson.create(title: "Qu'est ce qu'un hiragana ?", content: "Contenu du cours ici")

# then 2 exos
models.items << Exercice.create(title: "The Active Record pattern", content: "Exo about active record pattern")
models.items << Exercice.create(title: "Object Relational Mapping", content: "Exo about ORM")
models.items << Exercice.create(title: "Active Record as an ORM Framework", content: "Exo about ORM")

# a second lesson
models.items << Lesson.create(title: "Convention over Configuration in Active Record", content: "Lesson content here")

# 3 exos
models.items << Exercice.create(title: "Naming Conventions", content: "Exo about naming convention")
models.items << Exercice.create(title: "Schema Conventions", content: "Exo about schema convention")

# a summary lesson
models.items << Lesson.create(title: "Model summary", content: "Lesson content here")

# an exam
models.items << Exam.create(title: "Rails Models exam", content: "Exam content here")


# You can go to next course with : next_item = Course.first.chapters.first.items.first.lower_item
# Then go to next chapter with: next_item.chapter.lower_item
