require 'nokogiri'

module Jekyll
  module StripTocFilter
    def strip_toc(input)
      return input if input.nil? || input.empty?

      doc = Nokogiri::HTML::DocumentFragment.parse(input)

      # Remove Asciidoctor TOC block by ID
      doc.css('#toc').each do |node|
        node.remove
      end

      # Remove Markdown TOC block by ID
      doc.css('#markdown-toc').each do |node|
        node.remove
      end

      doc.to_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::StripTocFilter)