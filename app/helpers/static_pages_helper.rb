require 'redcarpet'

module StaticPagesHelper
	def markdown(text)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :space_after_headers => true, 
	:tables => true, :filter_html => true, :autolink => true, :no_intra_emphasis => true, :fenced_code_blocks => true,
	 :highlight => true, :hard_wrap => true)
  markdown.render(text).html_safe
end

 def syntax_highlighter(html)
  doc = Nokogiri::HTML(html)
  doc.search("//pre[@lang]").each do |pre|
    pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
  end
  doc.to_s
end 
end
