class CategoriesPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_payments, :id => false do |t|
      t.references :category, foreign_key: true
      t.references :payment, foreign_key: true
    end
  end
end
