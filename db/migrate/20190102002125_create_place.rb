class CreatePlace < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :google_id
      t.string :street_number
      t.string :street_name
      t.string :city_name
      t.text :open_hours, array: true, default: []
    end
  end
end
