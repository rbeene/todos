require 'spec_helper'

describe Todo do
  it { should validate_presence_of(:owner_email)}
end

describe Todo, '#state' do
  it 'returns complete when the todo is complete' do
    todo = build :todo, completed_at: Time.now
    expect(todo.state).to eq 'complete'
  end

  it 'returns incomplete when the todo is incomplete' do
    todo = build :todo
    expect(todo.state).to eq 'incomplete'
  end
end
