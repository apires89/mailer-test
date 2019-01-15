class TestMailer < ApplicationMailer
  def postmark
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'andrepires@oceangest.pt',
      :from => 'andrepires@oceangest.pt',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
    :track_opens => 'true')
  end
end
