class AddNumberToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :number, :string
  end
end
