class Book < ApplicationRecord
   belongs_to :user
   has_many :favorites, dependent: :destroy
   has_many :book_comments, dependent: :destroy

   def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
   end

   scope :ranking, -> do
      to = Time.current.end_of_day
      from = (to - 6.day).beginning_of_day
      sort_by{|book| -book.favorites.where(created_at: from...to).count}
   end

   validates :title, presence: true
   validates :body, presence: true, length:{maximum: 200}

end
