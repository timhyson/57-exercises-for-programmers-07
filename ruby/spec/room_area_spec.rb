require 'room_area'

describe RoomArea do
  describe '#prompt_length' do
    it 'asks user for the room length' do
      allow(subject).to receive(:gets).and_return('15')
      expect(subject.prompt_length).to eq '15'
    end
  end

  xit 'calculates the area of a room' do

  end
end
