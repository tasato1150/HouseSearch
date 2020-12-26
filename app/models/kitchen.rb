class Kitchen < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ガスコンロ設置済'}, {id: 2, name: 'IHコンロ'}, {id: 3, name: 'コンロ二口以上'},
      {id: 4, name: 'システムキッチン'}, {id: 5, name: 'カウンターキッチン'}, {id: 6, name: '食器洗い乾燥機'}
    ]
end