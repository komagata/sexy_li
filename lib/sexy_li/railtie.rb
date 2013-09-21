require 'sexy_li/record_tag_helper'

module SexyLi
  class Railtie < ::Rails::Railtie
    initializer 'sexy_li' do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, SexyLi::RecordTagHelper
      end
    end
  end
end
