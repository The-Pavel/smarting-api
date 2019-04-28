class Comment < ApplicationRecord
  belongs_to :post

  before_save :generate_name

  def generate_name
    self.name = Faker::FunnyName.name
  end
end
