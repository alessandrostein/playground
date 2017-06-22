class CreateTableEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :address
      t.string :complement
      t.string :city
    end
  end
end
