class CreateCabinets < ActiveRecord::Migration[5.0]
  def change
    create_table :cabinets do |t|
      t.references :user,null:false,foreign_key:true
      t.references :post,null:false,doreign_key:true
      t.timestamps
    end
  end
end
