class ChangeDataTypeForDateOfBirth < ActiveRecord::Migration[5.1]
  def change
    change_column(:patients, :date_of_birth, :datetime)
  end
end
