class AddPrefsToFuneral < ActiveRecord::Migration
  def change
    add_column :funerals, :dress_code, :string
    add_column :funerals, :flowers, :string
    add_column :funerals, :donations_to, :string
    add_column :funerals, :wake, :text
    add_column :funerals, :epitaph, :text
    add_column :funerals, :additional_requirements, :text
  end
end
