class CreateDrpatients < ActiveRecord::Migration[5.2]
  def change
    create_table :drpatients do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
    end
  end
end
