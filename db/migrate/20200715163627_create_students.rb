class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :caste
      t.string :admission_year
      t.string :academic_year
      t.string :student_class
      t.string :branch
      t.string :application_id
      t.float :tution_fee
      t.float :devlopment_fee
      t.float :other_fee
      t.float :total
      t.string :gender
      t.string :admission_type
      t.string :email
      t.string :mobile
      t.string :result
      t.text :remark
      t.timestamps
    end
  end
end
