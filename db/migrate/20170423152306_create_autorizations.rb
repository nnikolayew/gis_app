class CreateAutorizations < ActiveRecord::Migration
  def change
    create_table :autorizations do |t|
      t.string :number
      t.string :password

      t.timestamps null: false
    end
  end

end
