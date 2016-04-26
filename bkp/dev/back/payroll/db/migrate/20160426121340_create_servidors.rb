class CreateServidors < ActiveRecord::Migration
  def change
    create_table :servidores do |t|
    	t.string :nome
    	t.integer :idade
    	t.decimal :salario, :precision => 8, :scale => 2
    	t.timestamps null: false
    end
  end
end
