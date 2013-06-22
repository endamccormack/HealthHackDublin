class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :title
      t.date :startDate
      t.integer :user_id

      t.timestamps
    end
  end
end
