# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ==================================================
# EVENT SEEDS
# ==================================================

# ======================================
# TAMALE FESTIVAL
# ======================================

Event.create(name: "Tamale Festival", path: "tamale-fest?lang=en",
             language: "en")

Event.create(name: "Festival Del Tamal", path: "tamale-fest?lang=es",
             language: "es")

# ==================================================
# PAGE SEEDS
# ==================================================

# ======================================
# ABOUT US
# ======================================
Page.create(innerHTML:
    "<head>
    <title>CARAS | About Us</title>
</head>

<body>
<div class=\"jumbotron\" style=\"background-image: url(nativemural1024x768.jpg);\">
  <div>
    <h1>CARAS</h1>
    <p>Learn About Our Organization</p>
  </div>
</div>

<div class=\"container\">
    <div class=\"row\">
      <div id=\"left\" style=\"float: left\">
        <h1><img src=\"caras-logo-transparent-no-text.png\" width=\"300px\" style=\"padding-right: 20px;\"></img></h1>
      </div>
      <div id=\"right\">
      <h1>About CARAS</h1>
        <p>CARAS is a non-profit organization formed to serve incoming youth and families in the community throu providing culturally competent and sensitive programming based on the needs and assets present in South Santa Clara County.</p>
        <p>Caras was formed by community memebers concerned with the lack of services available to Latino families. The services we provide include, but are not limited to, programs for parents, women, children, adolescents and seniors.</p>
        <p>CARAS programs focus on leadership, intervention for at risk youth, education and health and fitness as well as advocacy and immigrant's rights.</p>
      </div>
    </div>
</div>",  
lang: "en",
pageType: "about-us")

Page.create(innerHTML:
     "<head>
  <title>CARAS | Misión</title>
</head>

<body>
<div class=\"jumbotron\" style=\"background-image: url(nativemural1024x768.jpg);\">
  <div>
    <h1>Misión</h1>
  </div>
</div>",
lang: "es", 
pageType: "about-us")

# ======================================
# CONTACT US
# ======================================

Page.create(innerHTML:
    "<head>
  <title>CARAS | Contact Us</title>

<body>
<div class=\"jumbotron\" style=\"background-image: url(aztecmural.jpg);\">
  <div>
    <h1>Contact Us</h1>
    <p>How to Contact Us</p>
  </div>
</div>

<div class=\"container\">
    <div class=\"row\">
      <div id=\"left\" style=\"float: right\">
        <h1><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3186.1564810305445!2d-121.5681427!3d37.0060631!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8091e3b977fa2433%3A0xc938153c171926e0!2s7365+Monterey+Rd%2C+Gilroy%2C+CA+95020!5e0!3m2!1sen!2sus!4v1439514560273\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></h1>
      </div>
      <div id=\"right\">
      <h1>Contact Information</h1>
      <h2>Office</h2>
      <p>We recently moved into an amazing new office at the Old Gilroy Hotel. Our street address is <b>7365 Monterey Rd Gilroy, CA 95020</b>.</p>
      <h2>Phone</h2>
      <p>(408)847-4978</p>
      <h2>Fax</h2>
      <p>(408)846-1089</p>
      </div>
    </div>
</div>", 
lang: "en",
pageType: "contact-us")

Page.create(innerHTML:
    "<head>
    <title>CARAS | Aser Contacto con Nosotros</title>
</head>

<body>
<div class=\"jumbotron\" style=\"background-image: url(aztecmural.jpg);\">
  <div>
    <h1>Aser Contacto con Nosotros</h1>
    <p>Como Contacto</p>
  </div>
</div>

<div class=\"container\">
    <div class=\"row\">
      <div id=\"left\" style=\"float: right\">
        <h1><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3186.1564810305445!2d-121.5681427!3d37.0060631!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8091e3b977fa2433%3A0xc938153c171926e0!2s7365+Monterey+Rd%2C+Gilroy%2C+CA+95020!5e0!3m2!1sen!2sus!4v1439514560273\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe></h1>
      </div>
      <div id=\"right\">
      <h1>Contact Information</h1>
      <h2>Office</h2>
      <p>We recently moved into an amazing new office at the Old Gilroy Hotel. Our street address is <b>7365 Monterey Rd Gilroy, CA 95020</b>.</p>
      <h2>Phone</h2>
      <p>(408)847-4978</p>
      <h2>Fax</h2>
      <p>(408)846-1089</p>
      </div>
    </div>
</div>", 
lang: "es",
pageType: "contact-us")

# ======================================
# DONATE
# ======================================

Page.create(innerHTML: 
    "<head>
    <title>CARAS | Donate</title>

</head>


<body>
<div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(flag.jpg);\">
  <div>
    <h1 style=\"color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">Donate</h1>
  </div>
</div>


<p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">Photo by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/ivangm/\" target=\"_blank\">ivangm</a>. License can be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by/2.0/\" target=\"_blank\">here</a>.</p>

<div class=\"container\">
    <div class=\"row\" align=\"center\">
  <p>If you would like to support our agency, please click the button below to proceed to Paypal.</p>
    <form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">
<input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\">
<input type=\"hidden\" name=\"hosted_button_id\" value=\"GH7EUP3J8QVBJ\">
<input type=\"image\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif\" border=\"0\" name=\"submit\" alt=\"PayPal - The safer, easier way to pay online!\">
<img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\">
</form>
</div></div>", 
lang: "en",
pageType: "donate")

Page.create(innerHTML: "
    <head>
    <title>CARAS | Donar</title>
</head>
<body>
<div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(flag.jpg);\">
  <div>
    <h1 style=\"color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">Donar</h1>
  </div>
</div>

<p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">Photo by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/ivangm/\" target=\"_blank\">ivangm</a>. License can be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by/2.0/\" target=\"_blank\">here</a>.</p>

<div class=\"container\">
    <div class=\"row\" align=\"center\">
    <form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\" target=\"_top\">
<input type=\"hidden\" name=\"cmd\" value=\"_s-xclick\">
<input type=\"hidden\" name=\"hosted_button_id\" value=\"PJP6LNBVX2HPE\">
<input type=\"image\" src=\"https://www.paypalobjects.com/es_XC/MX/i/btn/btn_donateCC_LG.gif\" border=\"0\" name=\"submit\" alt=\"PayPal, la forma más segura y rápida de pagar en línea.\">
<img alt=\"\" border=\"0\" src=\"https://www.paypalobjects.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\">
</form>
</div></div>", 
lang: "es",
pageType: "donate")

# ======================================
# EVENTS
# ======================================

Page.create(innerHTML: "
    <head>
    <title>CARAS | Events</title>
</head>", 
lang: "en",
pageType: "events")

Page.create(innerHTML: "
    <head>
    <title>CARAS | Eventos</title>
</head>", 
lang: "es",
pageType: "events")

# ======================================
# GALLERY
# ======================================

Page.create(innerHTML: "
    <head>
    <title>CARAS | Gallery</title>
</head>", 
lang: "en",
pageType: "gallery")

Page.create(innerHTML: "
    <head>
    <title>CARAS | Galería</title>
</head>", 
lang: "es",
pageType: "gallery")

# ======================================
# MEET THE TEAM
# ======================================

Page.create(innerHTML: "
    <head>
    <title>CARAS | Meet The Team</title>
</head>", 
lang: "en",
pageType: "meet-the-team")

Page.create(innerHTML: "
    <head>
    <title>CARAS | Conocer al Equipo</title>
</head>", 
lang: "es",
pageType: "meet-the-team")

# ======================================
# TAMALE FEST
# ======================================

Page.create(innerHTML: 
    "<head>
    <title>CARAS | Second Annual Tamale Festival</title>
</head>

<body>
<div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(tamale_header_1.jpg);\">
  <div>
    <h1 style=\"color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">Second Annual Tamale Festival</h1>
    <p style=\"color:white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">Brought to you by CARAS and El Charrito Market</p>
  </div>
</div>

<p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">Photo by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/shaynabright/\" target=\"_blank\">shaynabright</a>. License can be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by-nc-nd/2.0/\" target=\"_blank\">here</a>.</p>

<div class=\"container\">
    <div class=\"row\">
      <ol class=\"breadcrumb\">
        <li><a style=\"padding-left: 0;\" href=\"events?lang=en\">Events</a></li>
        <li class=\"active\"><a style=\"padding-left: 0;\">Second Annual Tamale Festival</a></li>
      </ol>

      <ul class=\"nav nav-tabs\">
        <li role=\"presentation\" class=\"active\"><a id=\"description\" >Description</a></li>
        <li role=\"presentation\"><a id=\"sponsors\">Sponsors</a></li>
        <li role=\"presentation\"><a id=\"entertainment\">Entertainment and Vendors</a></li>
        <li role=\"presentation\"><a id=\"registration\">Contest and Vendor Registration</a></li>
      </ul>
      <div id=\"tab-container\"></div>
    </div>
</div>",  
lang: "en",
pageType: "tamale-fest")

Page.create(innerHTML: 
    "<head>
    <title>CARAS | Festival del Tamal</title>
</head>

<body>
    <div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(tamale_header_1.jpg);\">
      <div>
        <h1 style=\"color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">Festival del Tamal</h1>
        <p style=\"color:white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;\">SPANISHBrought to you SPANISHby CARAS and ElSPANISH Charrito Market</p>
      </div>
    </div>

    <p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">PhotoSPANISH by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/shaynabright/\" target=\"_blank\">shaynabright</a>. License SPANISHcan be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by-nc-nd/2.0/\" target=\"_blank\">here</a>.</p>

    <div class=\"container\">
        <div class=\"row\">
          <ol class=\"breadcrumb\">
            <li><a style=\"padding-left: 0;\" href=\"events?lang=es\">Eventos</a></li>
            <li class=\"active\"><a style=\"padding-left: 0;\">Festival de Tamal</a></li>
          </ol>

          <ul class=\"nav nav-tabs\">
            <li role=\"presentation\" class=\"active\"><a id=\"description\" >Description SPANISH</a></li>
            <li role=\"presentation\"><a id=\"sponsors\">Sponsors SPANISH</a></li>
            <li role=\"presentation\"><a id=\"entertainment\">Entertainment and Vendors SPANISH</a></li>
            <li role=\"presentation\"><a id=\"registration\">Contest and Vendor Registration SPANISH</a></li>
          </ul>
          <div id=\"tab-container\"></div>
        </div>
    </div>", 
lang: "es",
pageType: "tamale-fest")

# ======================================
# VOLUNTEER
# ======================================

Page.create(innerHTML: "
    <head>
    <title>CARAS | Volunteer</title>
</head>

<body>    
    <div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(temple_jumbotron_img.jpg);\">
        <div>
            <h1 style=\"color: black;  text-shadow: -1px 0 grey, 0 1px grey, 1px 0 grey, 0 -1px grey;\">Volunteer</h1>
        </div>
    </div>
    
    <p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">Photo by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/celso/\" target=\"_blank\">Celso FLORES</a>. License can be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by/2.0/\" target=\"_blank\">here</a>. Modifications: Cropped photo.</p>

    <div class=\"container\">
        <div class=\"row\">
            <div id=\"right\">
                <h1>Forms</h1>
                <p>If you'd like to volunteer for our events, please download and fill the forms below.</p>
                <a href=\"/PDFs/CARASLiabilityReleaseForm.pdf\">Liability Release Form</a>
                <br><a href=\"/PDFs/CARASVolunteerIntake.pdf\">Volunteer Form</a>
            </div>
        </div>
    </div>", 
lang: "en",
pageType: "volunteer")

Page.create(innerHTML: "
    <head>
    <title>CARAS | Volunteer</title>
</head>

<body>    
    <div class=\"jumbotron\" style=\"margin-bottom: 0; background-image: url(temple_jumbotron_img.jpg);\">
        <div>
            <h1 style=\"color: black;  text-shadow: -1px 0 grey, 0 1px grey, 1px 0 grey, 0 -1px grey;\">Volunteer</h1>
        </div>
    </div>
    
    <p style=\"font-size: 7px; text-align: right; padding-bottom: 23px; padding-right: 10px\">Photo by <a style=\"padding-left: 0\" href=\"https://www.flickr.com/photos/celso/\" target=\"_blank\">Celso FLORES</a>. License can be found <a style=\"padding-left: 0\" href=\"https://creativecommons.org/licenses/by/2.0/\" target=\"_blank\">here</a>. Modifications: Cropped photo.</p>

    <div class=\"container\">
        <div class=\"row\">
            <div id=\"right\">
                <h1>Forms</h1>
                <p>If you'd like to volunteer for our events, please download and fill the forms below.</p>
                <a href=\"/PDFs/CARASLiabilityReleaseForm.pdf\">Liability Release Form</a>
                <br><a href=\"/PDFs/CARASVolunteerIntake.pdf\">Volunteer Form</a>
            </div>
        </div>
    </div>", 
lang: "es",
pageType: "volunteer")