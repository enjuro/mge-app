class Tweet < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    validates :content, presence: true,
                        length: { maximum: 140 }

    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
