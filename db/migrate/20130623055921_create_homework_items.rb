class CreateHomeworkItems < ActiveRecord::Migration
  def change
    create_table :homework_items do |t|
      t.text :content
      t.boolean :done
      t.date :dueDate
      t.integer :homework_id

      t.timestamps
    end
  end
end
