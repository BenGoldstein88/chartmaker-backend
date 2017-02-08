# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Section.delete_all
Measure.delete_all
Beat.delete_all

song = Song.create({ title: "Untitled 1", composer: "Ben Goldstein", arranger: "Benny G"})

section = Section.create({name: "Chorus", section_number: "0", song_id: song.id})

measure = Measure.create({num_beats: "4", measure_number: "0", section_id: section.id})

beat = Beat.create({chord: "Cm7", beat_number: "0", measure_id: measure.id})
