require 'room_area'

describe RoomArea do
  describe "#prompt_length" do
    it "asks user for the room length" do
      allow(subject).to receive(:gets).and_return("15")
      expect(subject.prompt_length).to eq 15
    end
  end

  describe "#prompt_width" do
    it "asks user for the room width" do
      allow(subject).to receive(:gets).and_return("20")
      expect(subject.prompt_width).to eq 20
    end
  end

  describe "#recap_mesage" do
    it "recaps the user's inputs" do
      allow(subject).to receive(:gets).and_return("15", "20")
      #expect(STDOUT).to receive(:puts).with("What is the length of the room in feet?")
      #allow(STDIN).to receive(:gets).and_return("15")
      #expect(STDOUT).to receive(:puts).with("What is the width of the room in feet?")
      #allow(STDIN).to receive(:gets).and_return("20")
      expect(subject.run_app).to eq("You entered dimensions of 15 feet by 20 feet.")
    end
  end
end
