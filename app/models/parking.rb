class Parking < ActiveHash::Base
  self.data = [
      {id: 1, name: '駐車場あり'}, {id: 2, name: 'バイク置き場あり'}, {id: 3, name: '駐輪場あり'}
    ]
end