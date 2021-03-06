require 'middleman-core'
require 'middleman-title/helpers'

module Middleman
  class TitleExtension < Middleman::Extension
    option :site, false, 'Name of your website'
    option :separator, ' &mdash; ', 'Title section separator'
    option :reverse, false, 'Reverse the order of title sections'

    self.defined_helpers = [ Middleman::Title::Helpers ]

    def initialize(app, options_hash={}, &block)
      super
      ::Middleman::TitleExtension.class_variable_set(:@@options, options)
    end

    def self.options
      @@options
    end
  end
end
