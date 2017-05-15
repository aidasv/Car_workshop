class Car < ApplicationRecord
  belongs_to :client
  has_many :visits


  BODY_TYPES = [['Sedanas', 'Saloon'], 
                ['Universalas', 'Estate'], 
                ['Kabrioletas', 'Cabriolet'], 
                ['Visureigis', 'Off_road'], 
                ['Kupė', 'Coupe'],
                ['Vienatūris', 'Van'],
                ['Kita', 'Other']]
  FUEL_TYPES = [['Benzinas', 'Petrol'], 
                ['Dyzelis', 'Diesel'], 
                ['Benzinas/Dujos', 'LPG'], 
                ['Hibridas', 'Hybrid'], 
                ['ELektra', 'Electric'],
                ['Vandenilis', 'Hydrogen'],
                ['Etanolis', 'Ethanol'],
                ['Kita', 'Other']]
end
