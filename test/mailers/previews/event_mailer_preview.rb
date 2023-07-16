# Preview all emails at http://localhost:3000/rails/mailers/event_mailer
class EventMailerPreview < ActionMailer::Preview
  def test
    @group = Group.find(1)
    @member = User.find(2)
    @owner = @group.owner
    event = { :group => @group, :title => "title", :body => "body" }
    
    EventMailer.send_notification(@member, event)
    
  end
end
