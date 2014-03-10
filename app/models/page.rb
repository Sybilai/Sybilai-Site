class Page < ActiveRecord::Base
  include PagesHelper
  validates_uniqueness_of :permalink
  before_save :compile_content

  def to_param
    permalink
  end

  private
  def compile_content
    self.compiled_content = markdown(self.content)
  end

end
