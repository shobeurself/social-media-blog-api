class CreateMeditations < ActiveRecord::Migration[8.0]
  def change
    create_table :meditations, id: :uuid do |t|
      t.uuid :user_id
      t.integer :duration
      t.string :notes
      t.date :date

      t.timestamps
    end

    add_foreign_key :meditations, :users
  end
end
