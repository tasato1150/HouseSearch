class Security < ActiveHash::Base
  self.data = [
      {id: 1, name: 'オートロック'}, {id: 2, name: '防犯カメラ'}, {id: 3, name: 'TVモニタ付インターホン'},
      {id: 4, name: '管理人常駐'}, {id: 5, name: '宅配ボックス'}
    ]
end