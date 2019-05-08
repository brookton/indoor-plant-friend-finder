#class PlantControl < ActiveRecord::Base
#  belongs_to :NewApp

def quiz
end

def air_improvement
  Plant.where(clean_air: true)
end

def easy_to_grow
end

def medicinal
end

def flowering
end

def pet_safe
end

def name_generator

end

#end
