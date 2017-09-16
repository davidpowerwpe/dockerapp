require 'helloworld'
RSpec.describe HelloWorld do
  let('hello') { HelloWorld.new }

  describe 'an instanciated hello world' do
      it 'returns a hello world string' do
        expect(hello.say).to eq('hello world 2')
      end
  end
end
