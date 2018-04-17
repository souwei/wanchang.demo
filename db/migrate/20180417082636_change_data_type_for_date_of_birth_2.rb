class ChangeDataTypeForDateOfBirth2 < ActiveRecord::Migration[5.1]
  def change
    change_column(:patients, :date_of_birth, :date)
  end
end
