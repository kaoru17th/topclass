class UserMailer < ActionMailer::Base
  default from: "kaoru17th@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  
  def notification_quota_email(program_id,preregister_subject)
    @preregister_subject = preregister_subject
    @subject = Subject.find_by_id(@preregister_subject.subject_id)
    @user = Program.find_by_id(program_id).user
    mail(to: @user.email, subject: 'Quota Overload')
  end
  
end
