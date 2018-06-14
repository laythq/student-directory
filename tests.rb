> track_name("Bibi")
=> "Name stored!"
> show_names
=> ["Bibi"]
> track_name("Layth")
=> "Name stored!"
> show_names
=> ["Bibi", "Layth"]

describe "track_name method" do
  it "gives us a friendly message" do
    expect(track_name("Bibi")).to eq "Name stored!"
  end

end
