class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :content
      t.string :image_url
      t.integer :total_tweet
      t.integer :total_retweet

      t.timestamps
    end
  end
end
