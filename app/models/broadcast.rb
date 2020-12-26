class Broadcast < ActiveHash::Base
  self.data = [
      {id: 1, name: 'CATV'}, {id: 2, name: 'CS対応'}, {id: 3, name: 'BS対応'},
      {id: 4, name: 'インターネット使用料無料'}, {id: 5, name: 'ブロードバンド'}
    ]
end