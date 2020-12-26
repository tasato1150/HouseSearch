class Facility < ActiveHash::Base
  self.data = [
      {id: 1, name: '都市ガス'}, {id: 2, name: 'オール電化'}, {id: 3, name: 'メゾネット'},
      {id: 4, name: 'フローリング'}, {id: 5, name: '専用庭'}, {id: 6, name: 'バルコニー'},
      {id: 7, name: 'バリアフリー'}, {id: 8, name: 'ロフト付き'}, {id: 9, name: 'エレベーター'}
    ]
end