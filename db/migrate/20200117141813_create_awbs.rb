class CreateAwbs < ActiveRecord::Migration[5.0]
  def change
    create_table :awbs do |t|

      t.string  :prefix     
      t.string  :suffix     
      t.string  :org        
      t.string  :dst        
      t.integer :pcs        
      t.float   :wgt        
      t.float   :vol        
      t.text    :description

      t.timestamps
    end
  end
end
