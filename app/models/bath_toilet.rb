class BathToilet < ActiveHash::Base
  self.data = [
      {id: 1, name: 'バス・トイレ別'}, {id: 2, name: '追焚機能'}, {id: 3, name: '温水洗浄便座'},
      {id: 4, name: '浴室乾燥機'}, {id: 5, name: '洗面所独立'}, {id: 6, name: '室内洗濯機置場'}
    ]
end