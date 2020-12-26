class BuildingStructure < ActiveHash::Base
  self.data = [
      {id: 1, name: '鉄筋系'}, {id: 2, name: '木造系'}, {id: 3, name: '鉄骨系'},
      {id: 4, name: 'ブロック・その他'}
    ]
end