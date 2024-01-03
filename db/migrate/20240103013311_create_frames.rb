class CreateFrames < ActiveRecord::Migration[7.1]
  def change
    create_table :frames do |t|
      t.string :name
      t.string :style
      t.string :url
      t.string :size
      t.float :retail
      t.string :paid

      t.timestamps
    end
  end
end
