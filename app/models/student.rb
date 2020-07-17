class Student < ApplicationRecord
has_many :receipts

  def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        Student.create! row.to_hash
      end
  end

end
