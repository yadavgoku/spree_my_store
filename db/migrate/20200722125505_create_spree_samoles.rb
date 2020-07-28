class CreateSpreeSamoles < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_samoles do |t|
      t.string :name

      t.timestamps
    end
  end
end
