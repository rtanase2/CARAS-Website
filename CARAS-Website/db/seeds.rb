# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ==================================================
# EVENTS SEEDS
# ==================================================

# ========================================
# TAMALE FESTIVAL
# ========================================

Event.create(name: "Second Annual Tamale Festival",
             description: "Fun for the whole family! We are featuring an number of tamale vendors from different origins that you can purchase as well as providing entertainment thorughout the day. There will be dancers, a car show, a tamale cook off, musical performances and much more! Don't miss this great event!",
             subheader: "Brought to you by CARAS and El Charrito Market",
             date: DateTime.new(2015, 9, 27),
             street_address: "Monterey St. between 3rd and 5th St.",
             city: "Gilroy",
             zip_code: "95020",
             state: "CA",
             language: "en",
             event_type: "tamale-fest")

Event.create(name: "Segundo Festival del Tamal",
             subheader: "GET SUBHEADER",
             description: "GET CONTENT!",
             date: DateTime.new(2015, 9, 27),
             street_address: "Monterey St. between 3rd and 5th St.",
             city: "Gilroy",
             zip_code: "95020",
             state: "CA",
             language: "es",
             event_type: "tamale-fest")