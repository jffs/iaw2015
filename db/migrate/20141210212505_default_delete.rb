class DefaultDelete < ActiveRecord::Migration

def change  
  	change_column :categories, :eliminado, :boolean, default: false

end
end
