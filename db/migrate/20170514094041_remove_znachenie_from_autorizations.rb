class RemoveZnachenieFromAutorizations < ActiveRecord::Migration
  def change
    remove_column :autorizations, :znachenie, :text
  end
end
