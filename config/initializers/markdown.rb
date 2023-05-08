# frozen_string_literal: true

module MarkdownRenderer
  module Handler
    def self.erb
      @erb ||= ActionView::Template.registered_template_handler(:erb)
    end

    def self.call(template, source)
      compiled_source = erb.call(template, source)
      "MarkdownRenderer::Handler.render(begin;#{compiled_source};end)"
    end

    def self.render(source)
      Kramdown::Document.new(source, auto_ids: true).to_html
    end
  end
end

# Now we tell Rails to process any files with the `.md` extension using our new MarkdownHandler
ActionView::Template.register_template_handler(:md, MarkdownRenderer::Handler)
