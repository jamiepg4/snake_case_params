require 'spec_helper'

describe EchoController, type: :controller do
  it 'works' do
    get :echo, { 'parameter_one' => 'one', 'parameterTwo' => { 'innerOne' => 'i1' } }
    expect(json).to have_key('parameter_one')
    expect(json['parameter_one']).to eq('one')

    expect(json).to have_key('parameter_two')
    expect(json['parameter_two']).to have_key('inner_one')
    expect(json['parameter_two']['inner_one']).to eq('i1')
  end
end
