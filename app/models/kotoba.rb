class Kotoba < ApplicationRecord
  validates :text, presence: true
  validate :check_forbidden_words

  belongs_to :user
  has_many :comments
  
  def soft_delete
    self.update_attribute(:delete_at, Time.current)
  end
  
    private
  
    def check_forbidden_words
      forbidden_words = ["死ね", "殺す", "殺し"]
      if forbidden_words.any? { |word| text.include?(word) }
        errors.add(:text, "使用できない言葉が含まれています")
      end
    end
end
