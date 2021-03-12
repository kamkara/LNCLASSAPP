class CreateCitytowns < ActiveRecord::Migration[6.0]
  def change
    create_table :citytowns, id: :uuid do |t|
      t.string :title
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
