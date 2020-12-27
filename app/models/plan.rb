class Plan < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ワンルーム'}, {id: 2, name: '1K'}, {id: 3, name: '1DK'},
      {id: 4, name: '1LDK'}, {id: 5, name: '2K'}, {id: 6, name: '2DK'},
      {id: 7, name: '2LDK'}, {id: 8, name: '3K'}, {id: 9, name: '3DK'},
      {id: 10, name: '3LDK'}, {id: 11, name: '4K'}, {id: 12, name: '4DK'},
      {id: 13, name: '4LDK'}, {id: 14, name: '4LDK以上'}
    ]
end