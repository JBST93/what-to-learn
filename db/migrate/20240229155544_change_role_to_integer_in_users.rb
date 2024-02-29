class ChangeRoleToIntegerInUsers < ActiveRecord::Migration[7.1]
  def up
    roles = User.all.map do |user|
      {id: user.id, role: user.role}
    end
    remove_column :users, :role
    add_column :users, :role, :integer, default: 0, null: false

    User.find_each do |user|
      role = roles.find { |r| r[:id] == user.id }
      user.update(role: role[:role])
    end
  end

  def down
    roles = User.all.map do |user|
      {id: user.id, role: user.role}
    end
    remove_column :users, :role
    add_column :users, :role, :string

    User.find_each do |user|
      role = roles.find { |r| r[:id] == user.id }
      user.update(role: role[:role])
    end
  end
end
