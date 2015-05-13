class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.integer :amount
      t.integer :cap
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
