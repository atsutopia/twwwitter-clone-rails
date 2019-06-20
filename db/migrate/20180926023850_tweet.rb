class Tweet < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|

      t.references :user
      t.text :tweet

      t.timestamps null: false
    end
  end
end
