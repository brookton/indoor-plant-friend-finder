Plant.destroy_all

orchid = Plant.create(
  name: "Orchid",
  difficulty: 3,
  light: "indirect",
  flowering: true,
  succulent: false,
  medicinal: false,
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

amaryllis  = Plant.create(
  name: "Amaryllis",
  difficulty: 2,
  light: "bright",
  flowering: true,
  succulent: false,
  medicinal: false,
  safe: false,
  clean_air: true,
  care: "From September place the plant pot in a cool spot
  (approximately 55°f - 13°c), reduce watering and stop
  fertilizing the soil for 8 to 10 weeks. After this 8 - 10 week period
  - begin watering once the soil becomes dry to the touch
    and fertilize once every two weeks.
   You can now expect new growth and flowers during winter.",
  propogation: true,
  images: "https://google.com/search?q=Amaryllis&tbm=isch"
)

spider_lily = Plant.create(
  name: "Spider Lily",
  difficulty: 3,
  light: "bright",
  flowering: true,
  succulent: false,
  medicinal: false,
  safe: false,
  clean_air: true,
  care: "Pleasing this plant species requires plenty of water and sunlight,
   as well as a unique soil blend. When cared for correctly, the stems
    of these plants can grow to almost 2 feet (60 cm) long, and the flower
     will easily add another foot (30cm) of length when it is fully bloomed.
  The flower produces a strong vanilla scent.",
  propogation: true,
  images: "https://google.com/search?q=spider%20lily&tbm=isch"
)

bird_of_paradise = Plant.create(
  name: "Bird of Paradise",
  difficulty: 1,
  light: "indirect",
  flowering: true,
  succulent: false,
  medicinal: false,
  safe: false,
  clean_air: true,
  care: "The plant grows to over 6 feet tall, and is designed to fully support
  the weight of birds who stop to eat the nectar.
   It was first introduced to Europe by explorers in 1773,
    and has become a common ornamental plant in places that
    feature a warm climate year-round.
    Flowering occurs multiple times a year if the plant is well
     taken care of. It is a long lived plant, and takes up to
     three years to begin producing flowers. Once it begins
        flowering, however, this plant will provide you with years
        of delight.",
  propogation: true,
  images: "https://google.com/search?q=bird%20of%20paradise&tbm=isch"
)

calla_lily = Plant.create(
  name: "Calla lily",
  difficulty: 2,
  light: "bright",
  flowering: true,
  succulent: false,
  medicinal: false,
  safe: false,
  clean_air: true,
  care: "Zantedeschia aethiopica is a water loving plant.
  It grows best on the edges of ponds and in the mud.
  Because of this, your indoor lily will prefer moist conditions.
  Keep the soil always moist, but never allow water to sit in the container.
  Too much water will cause the bulb to rot.",
  propogation: true,
  images: "https://google.com/search?q=cala%20lily&tbm=isch"
)



# Plant Categories: https://www.houseplantsexpert.com/indoor-plants-lighting-guide.html
# Plant Data: https://www.houseplant411.com/houseplant     https://garden.org
# Clean Air: https://en.wikipedia.org/wiki/NASA_Clean_Air_Study
# Google Image search link faq: https://webapps.stackexchange.com/questions/47587/google-image-search-url-that-can-be-shared
# Google Image Search https://google.com/search?q=SEARCHQUERY&tbm=isch
