# -*- encoding : utf-8 -*-
module People
  class << self
    attr_accessor :config

    DEFAULTS = {
    }.freeze

    def configure
      # load config from a yml, for instance
    end
  end
end

People.configure
