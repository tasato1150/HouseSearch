class Conditions < ActiveHash::Base
  self.data = [
      {id: 1, name: '楽器相談'}, {id: 2, name: '事務所可'}, {id: 3, name: '二人入居可'},
      {id: 4, name: '女性限定'}, {id: 5, name: '高齢者歓迎'}, {id: 6, name: 'ペット相談可'},
      {id: 7, name: '家賃・初期費用カード決済可'}, {id: 8, name: 'ルームシェア可'}, {id: 9, name: 'フリーレント'},
      {id: 10, name: 'カスタマイズ可'}, {id: 11, name: '定期借家権'}, {id: 12, name: '保証人不要'}
    ]
end