module SexyLi
  module RecordTagHelper
    def li_for(records, prefix = nil, options = {}, &block)
      content_tag_for(:li, records, prefix, options, &block)
    end

    def tr_for(records, prefix = nil, options = {}, &block)
      content_tag_for(:li, records, prefix, options, &block)
    end

    def render_content_for(tag, records, prefix = nil, options = {})
      key = records.first.class.name.tableize.singularize
      partial = prefix && prefix[:partial] ? prefix[:partial] : key
      content_tag_for(tag, records, prefix, options) do |record|
        render partial, key.to_sym => record
      end
    end

    def render_li_for(records, prefix = nil, options = {})
      render_content_for(:li, records, prefix, options)
    end

    def render_tr_for(records, prefix = nil, options = {})
      render_content_for(:tr, records, prefix, options)
    end
  end
end
