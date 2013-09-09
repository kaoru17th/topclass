def full_title(page_title)
  base_title = "Topclass"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user, options={})
  if options[:no_capybara]
    # Sign in when not using Capybara.
  else
    visit signin_path
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end