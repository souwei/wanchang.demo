class AddHealthCoverInsuranceToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :health_insurance, :string
  end
end
