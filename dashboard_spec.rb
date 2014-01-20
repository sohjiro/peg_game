require_relative 'panel'

describe Panel do

  it "accepts the number of rows in the panel" do
    rows = 5
    columns = 5

    panel = Panel.new(rows, columns)

    expect(panel.dimentions).to eq([rows, columns])
  end

  it "with dimentions it should draw panel" do
    rows = 5
    columns = 5

    panel = Panel.new(rows, columns)

    expect(panel.dimentions).to eq([rows, columns])
  end

end

