class RemoveOldColumnFromAutorizations < ActiveRecord::Migration
  def change
    remove_column :autorizations, :payment_type, :text
  end
end
