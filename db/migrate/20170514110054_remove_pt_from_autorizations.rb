class RemovePtFromAutorizations < ActiveRecord::Migration
  def change
    remove_column :autorizations, :paymentType, :text
  end
end
