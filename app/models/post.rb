class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  after_save :self_destruct

  private

  def self_destruct
    TerminateJob.set(wait: 10.hours).perform_later(self.id)
  end
end
