module Features
  def create_todo(title)
    click_on 'Create new todo'
    fill_in 'Title', with: title
    click_on 'Create'
  end
end
