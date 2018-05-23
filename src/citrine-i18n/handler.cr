module Citrine
  module I18n
    # Handler to initialize I18n for the request.
    class Handler
      include HTTP::Handler
      HEADER = "Accept-Language"

      def call(context : HTTP::Server::Context)
        if languages = context.request.headers[HEADER]?
          parser = Citrine::I18n::Parser.new languages
          compat = parser.compatible_language_from ::I18n.available_locales
          context.locale = compat if compat
          #Amber.logger.debug "Languages available: #{languages.to_s}"
          #Amber.logger.debug "Language chosen: #{::I18n.locale}"
        end
        call_next(context)
      end
    end
  end
end
