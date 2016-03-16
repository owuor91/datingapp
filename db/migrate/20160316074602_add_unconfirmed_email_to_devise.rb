class AddUnconfirmedEmailToDevise < ActiveRecord::Migration
  def up
    add_column :users, :unconfirmed_email, :string
  end

  def down
    remove_columns :unconfirmed_email  
  end
end
