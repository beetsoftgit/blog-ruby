class Post < ApplicationRecord
  validates :title, :content, presence: true
  validates :content, length: {minimum: 50, maximum: 250}

  #
  # def self.search(term)
  #   where('title LIKE ?', '%#{term}%')
  #   where('content LIKE ?', '%#{term}%')
  # end

  def self.search(term)
    where('title LIKE ?', "%#{term}%")
  end

end

