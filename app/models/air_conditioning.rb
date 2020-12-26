class AirConditioning < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ガス暖房'}, {id: 2, name: '石油暖房'}, {id: 3, name: 'エアコン'},
      {id: 4, name: '床暖房'}
    ]
end