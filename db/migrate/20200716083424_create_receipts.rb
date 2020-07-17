class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.belongs_to :student
      t.string :receipt_no
      t.date :receipt_date
      t.string :academic_year
      t.float :tution_fee
      t.float :devlopment_fee
      t.float :other_fee
      t.float :total
      t.string :payment_mode
      t.string :dd_no
      t.date :dd_date
      t.float :dd_amount
      t.boolean :status 
      t.string :remark

      t.timestamps
    end
  end
end
