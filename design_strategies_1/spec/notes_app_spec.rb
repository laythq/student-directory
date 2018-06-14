require 'notes_app'

describe "add_note method" do
  it "gives us a friendly message" do
    expect(track_name("Bibi")).to eq puts "Name stored!"
  end

end

describe "show_name method" do
  it "give us the names" do
    expect(show_names).to eq puts "Bibi"
  end

end
