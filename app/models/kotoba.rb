class Kotoba < ApplicationRecord
  validates :text, presence: true

  validate :check_forbidden_words
  
    private
  
    def check_forbidden_words
      forbidden_words = ["死ね", "殺す", "殺し"]
      if forbidden_words.any? { |word| text.include?(word) }
        errors.add(:text, "使用できない言葉が含まれています")
      end
    end
end
