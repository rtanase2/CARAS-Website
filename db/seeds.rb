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

Event.create(event_name: "Second Annual Tamale Festival",
             description: "Fun for the whole family! We are featuring an number of tamale vendors from different origins that you can purchase as well as providing entertainment thorughout the day. There will be dancers, a car show, a tamale cook off, musical performances and much more! Don't miss this great event!",
             subheader: "Brought to you by CARAS and El Charrito Market",
             date: DateTime.new(2015, 9, 27),
             start_time: DateTime.new(2015, 9, 27, 12, 00, 0),
             end_time: DateTime.new(2015, 9, 27, 19, 00, 0),
             street_address: "Monterey St. between 3rd and 5th St.",
             city: "Gilroy",
             zip_code: "95020",
             jumbotron_img: "tamale_header_1.jpg",
             img_takers_url: "https://www.flickr.com/photos/shaynabright/",
             img_takers_name: "shaynabright",
             img_license_url: "https://creativecommons.org/licenses/by-nc-nd/2.0/",
             entertainment: [],
             state: "CA",
             language: "en",
             tabs: ["Description", "Sponsors", "Entertainment and Vendors", "Registration"],
             event_type: "tamale-fest")

Event.create(event_name: "Segundo Festival del Tamal",
             subheader: "Traído a usted por CARAS y El Charrito Mercado",
             description: "¡Diversión para toda la familia! Estamos ofreciendo un número de vendedores de tamales de diferentes orígenes que usted puede comprar , así como proporcionar entretenimiento thorughout el día. Habrá bailarines , una exhibición de autos , un tamal Cook Off , actuaciones musicales y mucho más ! No te pierdas este gran evento!",
             date: DateTime.new(2015, 9, 27),
             start_time: DateTime.new(2015, 9, 27, 12, 00, 0),
             end_time: DateTime.new(2015, 9, 27, 19, 00, 0),
             street_address: "Monterey St. between 3rd and 5th St.",
             city: "Gilroy",
             zip_code: "95020",
             jumbotron_img: "tamale_header_1.jpg",
             img_takers_url: "https://www.flickr.com/photos/shaynabright/",
             img_takers_name: "shaynabright",
             img_license_url: "https://creativecommons.org/licenses/by-nc-nd/2.0/",
             entertainment: [],
             state: "CA",
             language: "es",
             tabs: ["Descripción", "Esponsor", "Entretenimiento y Vendedores", "Registro"],
             event_type: "tamale-fest")

# ==================================================
# SPONSORS SEEDS
# ==================================================

Sponsor.create(name: "CARAS",
               logo_url: "caras-logo-transparent.png")

Sponsor.create(name: "El Charrito Market",
               logo_url: "El Charrito logo.png")
