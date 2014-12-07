class CreateEditoras < ActiveRecord::Migration
  def change
    create_table :editoras do |t|
      t.string :nome
      t.string :cidade

      t.timestamps
    end
  end
end
