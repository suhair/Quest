class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :name
      t.text :content
      t.boolean :published
      t.integer :lesson_id

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
