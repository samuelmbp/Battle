feature 'testing_infrastructure' do
  scenario 'confirms working with string' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end