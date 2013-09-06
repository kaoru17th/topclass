Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^he submits invalid signin information$/ do
  click_button "Sign in"
end

Then /^he should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(firstname: "diego", lastname: "gonzalez", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", email: "da.gonzalez13@uniandes.edu.co",
                      password: "test12345", password_confirmation: "test12345")
end

When /^the user submits valid signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^he should see his profile page$/ do
  expect(page).to have_title(@user.firstname)
end

Then /^he should see a signout link$/ do
  expect(page).to have_link('Sign out', href: signout_path)
end