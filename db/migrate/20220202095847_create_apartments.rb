class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments, id: :uuid do |t|
      t.string :external_id

      t.timestamps
    end
  end
end
