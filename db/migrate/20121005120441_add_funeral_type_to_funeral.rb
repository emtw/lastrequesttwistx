class AddFuneralTypeToFuneral < ActiveRecord::Migration
  def change
    add_column :funerals, :other_pref, :string
  end
end
