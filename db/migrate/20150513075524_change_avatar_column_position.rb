class ChangeAvatarColumnPosition < ActiveRecord::Migration
  def change
		change_column :users, :avatar, :string, after: :birthdate
  end
end
