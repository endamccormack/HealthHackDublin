class CreateClinitians < ActiveRecord::Migration
  def change
    create_table :clinitians do |t|
      t.string :name
      t.string :password
      t.string :jobTitle

      t.timestamps
    end
  end
end
