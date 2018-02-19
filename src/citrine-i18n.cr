require "amber"
require "i18n"
require "./citrine-i18n/parser"
require "./citrine-i18n/handler"

module Citrine::I18n
	def self.configure
		yield ::I18n.config
	end
end
