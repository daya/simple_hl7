require "simple_hl7"

module SimpleHL7
  describe Field do
    describe "#to_hl7" do
      it "generates proper hl7 for a field with subfields" do
        field = Field.new
        field[1] = "foo"
        field[1][2] = "baz"
        field[2] = "bar"
        field.to_hl7(SeparatorCharacters.defaults).should == 'foo^baz~bar'
      end
    end
  end
end
