Plant.destroy_all

orchid = Plant.new(
  name: "Orchid",
  difficulty: 5,
  light: "bright indirect light",
  flowering: true,
  succulent: false,
  medicinal: 'null',
  safe: true,
  clean_air: true,
  care: "Light must be filtered, indirect. Dark green leaves mean a
  Cymbidium orchid needs more light. Yellow leaves are an indication
  that they are getting too much light. Pot must have drain holes.
  Water a lot and make sure no water sits on roots. Humiditiy 50%.
  Ideal temperatures for the flower buds to set should be 65°-70°
  during the day and 10°-15° cooler at night. Propigation by division",
  propogation: true,
  images: "https://google.com/search?q=orchid&tbm=isch"
)
orchid.save


# Plant Categories: https://www.houseplantsexpert.com/indoor-plants-lighting-guide.html
# Plant Data: https://www.houseplant411.com/houseplant     https://garden.org
# Clean Air: https://en.wikipedia.org/wiki/NASA_Clean_Air_Study
# Google Image search link faq: https://webapps.stackexchange.com/questions/47587/google-image-search-url-that-can-be-shared
# Google Image Search https://google.com/search?q=SEARCHQUERY&tbm=isch
