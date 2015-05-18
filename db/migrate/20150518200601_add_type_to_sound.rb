class AddTypeToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :type, :string, :default => nil
  end
end
