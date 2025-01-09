class CreateFortunes < ActiveRecord::Migration[8.0]
  def change
    create_table :fortunes do |t|
      t.string :text
      t.string :source

      t.timestamps
    end
  end
end
