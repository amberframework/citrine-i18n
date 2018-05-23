require "http/server/handler"
require "i18n"
require "./citrine-i18n/parser"
require "./citrine-i18n/handler"

class HTTP::Server::Context
  property locale : String = "en"
end

module Citrine::I18n
  def self.configure
    yield ::I18n.config
  end
end
