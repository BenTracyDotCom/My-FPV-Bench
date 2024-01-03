class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_type
      t.string :url
      t.float :retail
      t.string :paid

      t.timestamps
    end
  end
end
