class CreateFolhas < ActiveRecord::Migration
  def change
    create_table :folhas do |t|
    	t.decimal :verba, :precision => 8, :scale => 2
    	t.integer :funcionarios
      t.timestamps null: false
    end
  end
end
