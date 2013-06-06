require "spec_helper"

describe TicketsMailer do
  describe "new_ticket" do
    let(:mail) { TicketsMailer.new_ticket }

    it "renders the headers" do
      mail.subject.should eq("New ticket")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
