require 'action_view'
require 'mandrill_mailer/railtie'
require 'mandrill_mailer/mock'
require 'mandrill_mailer/template_mailer'
require 'mandrill_mailer/version'

module MandrillMailer
  def self.configure(&block)
    if block_given?
      block.call(MandrillMailer::Railtie.config.mandrill_mailer)
    else
      MandrillMailer::Railtie.config.mandrill_mailer
    end
  end

  def self.config
    MandrillMailer::Railtie.config.mandrill_mailer
  end
end