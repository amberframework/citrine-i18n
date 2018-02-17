require "amber"
require "i18n"
require "./citrine-i18n/parser"
require "./citrine-i18n/pipes/i18n"

module Citrine::I18n
	def self.configure
		yield ::I18n.config
	end
end
