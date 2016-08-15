class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.belongs_to      :user
      t.belongs_to      :node
      t.string          :title
      t.text            :body
      t.integer         :repelies_count,        null: false,      default: 0
      t.integer         :replies_count,         default: 0,       null: false
      t.integer         :likes_count,           default: 0
      t.integer         :follower_ids,          default: [],      array: true
      t.integer         :liked_user_ids,        default: [],      array: true
      t.boolean         :closed,                default: false
      t.timestamps
    end
  end
end
