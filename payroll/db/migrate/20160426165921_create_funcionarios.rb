class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.integer :idade
      t.decimal :salario, :precision => 6, :scale => 2

      t.timestamps null: false
    end
  end
end
