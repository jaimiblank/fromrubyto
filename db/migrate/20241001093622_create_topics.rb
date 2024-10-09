class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :subtitle
      t.text :content

      t.timestamps
    end
  end
end
