class Position < ActiveHash::Base
  self.data = [
      {id: 1, name: '1階の物件'}, {id: 2, name: '2階以上'}, {id: 3, name: '最上階'},
      {id: 4, name: '角部屋'}, {id: 5, name: '南向き'}
    ]
end