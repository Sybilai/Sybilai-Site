class AddCompiledContentToPages < ActiveRecord::Migration
  def change
    add_column :pages, :compiled_content, :string
  end
end
