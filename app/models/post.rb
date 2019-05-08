class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  after_save :self_destruct

  private

  def self_destruct
    TerminateJob.set(wait: 12.hour).perform_later(self.id)
  end
end
