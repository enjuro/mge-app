class AddUntilToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :until, :datetime
  end
end
