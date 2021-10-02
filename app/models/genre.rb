class Genre <  ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '食' },
    { id: 2, name: '運動' },
    { id: 3, name: '自然' },
    { id: 4, name: '読書' },
    { id: 5, name: '旅' },
  ]
end
