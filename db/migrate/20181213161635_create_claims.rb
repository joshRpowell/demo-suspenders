class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end
