class AddPaymentFromAutorizations < ActiveRecord::Migration
  def change
    add_column :autorizations, :paymenttype, :text
  end
end
