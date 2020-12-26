class ContractPeriod < ActiveHash::Base
  self.data = [
      {id: 1, name: '1年間'}, {id: 2, name: '2年間'}, {id: 3, name: '3年間'},
      {id: 4, name: '4年間'}, {id: 5, name: '5年間'}
    ]
end