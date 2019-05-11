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

boston_fern = Plant.create(
  name: "Boston Fern",
  difficulty: 2,
  light: "indirect",
  flowering: false,
  succulent: false,
  medicinal: false,
  safe: true,
  clean_air: true,
  care: "When it gets too cold this plant will go into
   a kind of dormancy period until conditions become correct.
    However, if the right conditions are provided, such as high
     humidity, enough indirect sunlight and warm enough temperatures,
      the Boston fern will be fine when taken back indoors.
      Many of them do lose leaves once they are brought inside,
         which is of no major concern.....just keep
          providing the right care and conditions.",
  propogation: true,
  images: "https://google.com/search?q=boston%20fern&tbm=isch"
)

  aloe_vera= Plant.create(
    name: "Aloe Vera",
    difficulty: 1,
    light: "bright",
    flowering: false,
    succulent: true,
    medicinal: true,
    safe: true,
    clean_air: true,
    care: "The Aloe Vera thrives on bright light conditions,
    but not direct sunlight. Heat is fine because they react
     similar to a cacti in hot conditions. Bright rather than
      light (direct), is the key.",
    propogation: true,
    images: "https://google.com/search?q=aloe%20vera&tbm=isch"
)

  bunny_ear = Plant.create(
    name: "Bunny Ear",
    difficulty: 2,
    light: "indirect",
    flowering: false,
    succulent: true,
    medicinal: false,
    safe: true,
    clean_air: false,
    care: "Like most cacti, this specimen demands
     sandy soil-bases that drain easily. It is usually happy
      with the pre-packaged cactus soil found in common
       hardware stores. To increase drainage for a picky plant,
        mix in a 1:1 ratio of perlite or bark.",
    propogation: true,
    images: "https://google.com/search?q=bunny%20ear&tbm=isch"
)

  donkeys_tail = Plant.create(
  name: "Donkey's Tail",
  difficulty: 3,
  light: "bright",
  flowering: true,
  succulent: true,
  medicinal: false,
  safe: false,
  clean_air: false,
  care: " A Donkey’s Tail plant needs at least four hours of sun or
  very bright light every day. If it gets insufficient light the
  new growth will be small, pale, and weak. Succulent Plants need
  to dry out before you water and a Donkey’s Tail plant is no
  exception. Water well and then do not water again until the soil
  has thoroughly dried out. Over-watering a Donkey's Tail plant
  or any Succulent Plant is the easiest way to kill it.",
  propogation: true,
  images: "https://google.com/search?q=donkeys%20tail&tbm=isch"
)

tiger_jaws = Plant.create(
  name: "Tiger Jaws",
  difficulty: 2,
  light: "indirect",
  flowering: true,
  succulent: true,
  medicinal: false,
  safe: true,
  clean_air: true,
  care: "A thorough watering is needed when the top soil
   is becoming slightly dry to the touch. During winter cut
    watering down and let the soil dry out much more. A sure
     way to kill this plant is to overwater it during the winter.
      Never leave the plant standing in water.",
  propogation: true,
  images: "https://google.com/search?q=tiger%20jaws&tbm=isch"
)

maidenhair_fern = Plant.create(
  name: "Maidenhair Fern",
  difficulty: 3,
  light: "indirect",
  flowering: false,
  succulent: false,
  medicinal: false,
  safe: true,
  clean_air: true,
  care: "A place with indirect sun is best suited for this fern.
   If you can provide a fairly shaded place with small amounts of
    filtered sun then your on to a winner. In their natural woodland
     habitat they would be shaded by trees, but receive some spots of sun.",
  propogation: true,
  images: "https://google.com/search?q=maidenhair%20fern&tbm=isch"
)

  african_violet = Plant.create(
  name: "African Violet",
  difficulty: 1,
  light: "bright",
  flowering: true,
  succulent: false,
  medicinal: false,
  safe: true,
  clean_air: true,
  care: "Room temperatures of around 65°f / 16°c --- 75°f /
   24°c are ideal. Try not to allow temperatures to decrease
   lower than 60°f / 15.5°c and it's advised to avoid cold drafts
    or abrupt temperature changes.",
  propogation: true,
  images: "https://google.com/search?q=african%20violet&tbm=isch"
)

pothos_jade = Plant.create(
    name: "Pothos",
    difficulty: 1,
    light: "low",
    flowering: true,
    succulent: false,
    medicinal: false,
    safe: false,
    clean_air: true,
    care: "Origin: French Polynesia. Epipremnum aureum, or Pothos, is a tropical
    aroid vine in the family Araceae. Like other closely-related aroids, this
    plant's leaves will change in shape with age (similar to a Monstera). The
    leaves can be found in the wild sprawled out along the ground and climbing
    up trees. Considered to be in the monstera subfamily Monsteroideae, these
    plants can truly grow monsterous! In mature plants, the leaves can grow
    to be longer than 3 feet long. Pothos have the ability to spontaneously
    generate variegation, which has led to several cultivars of variegation
    and color– marble, neon, and classic jade.
    Pothos plants do well in temperatures between 55° and 80°F (12.8°-26.7°C).
      If temperatures drop below 45°F (7.2°C), a pothos plant stops growing and
      the leaves turn black.
    Pothos plants are poisonous plants with a level #2 toxicity. ",
    propogation: true,
    images: "https://google.com/search?q=pothos&tbm=isch"
)

pilea = Plant.create(
    name: "Aluminum plant",
    difficulty: 2,
    light: "bright",
    flowering: true,
    succulent: false,
    medicinal: false,
    safe: true,
    clean_air: true,
    care: "The Aluminum plant, Pilea cadierei, is an attractive hanging
    or table plant native to China and Viet Nam. This particular variety
    of Pilea is grown for its attractive leaves rather than its very small flowers.
    An Aluminum Plant needs bright indirect light. Direct sun burns the leaves
    and not enough light causes the plant to become leggy as it
    reaches for the light.",
    propogation: true,
    images: "https://google.com/search?q=aluminum%20plant&tbm=isch"
)
#

baby_rubber_tree = Plant.create(
  name: "Baby Rubber Tree",
  difficulty: 1,
  light: "indirect",
  flowering: false,
  succulent: true,
  medicinal: true,
  safe: true,
  clean_air: true,
  care: "The baby rubber tree plant, PEPEROMIA OBTUSIFOLIA, has over 1000
  varieties of peperomia plants and most are native to Central and South America.
   All peperomia plants, which belong to the Pepper Family,
   are semi- succulents with very similar care requirements.
   Allow the top 50% of the soil to dry out before you water.
   Over-watering, resulting in root-rot, is the main cause
   of serious peperomia plant problems. It’s best to water these
   plants from the bottom.",
  propogation: true,
  images: "https://google.com/search?q=aluminum%20plant&tbm=isch"
)

zz_plant = Plant.create(
  name: "ZZ Plant",
  difficulty: 1,
  light: "indirect",
  flowering: false,
  succulent: true,
  medicinal: false,
  safe: false,
  clean_air: false,
  care: "ZZ plants, Zamioculcas zamiifolia, are beautiful, unique, almost
  impossible to kill succulent houseplants that burst onto the market a
  few years ago. They have become an immediate hit. ZZ plants have long stems
  covered in hundreds of round, plump, shiny green leaves (or leaflets as they
  are called. These plants, native to Eastern Africa, are very drought
  resistant plants thanks to their rhizomatous roots that store water.
  ZZ plants may be one of the hardiest and most forgiving indoor plants
  I can recommend.Zamioculcas zamiifolia are extremely Poisonous Houseplants.
  ZZ plants have a #4 (the highest) toxicity level.",
  propogation: true,
  images: "https://google.com/search?q=zz%20plant&tbm=isch"
)

# Plant Categories: https://www.houseplantsexpert.com/indoor-plants-lighting-guide.html
# Plant Data: https://www.houseplant411.com/houseplant     https://garden.org
# Clean Air: https://en.wikipedia.org/wiki/NASA_Clean_Air_Study
# Google Image search link faq: https://webapps.stackexchange.com/questions/47587/google-image-search-url-that-can-be-shared
# Google Image Search https://google.com/search?q=SEARCHQUERY&tbm=isch
