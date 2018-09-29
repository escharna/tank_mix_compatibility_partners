class CreateExperiments < ActiveRecord::Migration[5.2]
  def change
    create_table :experiments do |t|
      t.references :requester, null: false
      t.string :name, null: false
      t.text :description, null: false
    end
  end
end
