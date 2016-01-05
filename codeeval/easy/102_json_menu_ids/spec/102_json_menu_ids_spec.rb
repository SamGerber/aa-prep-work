require "102_json_menu_ids"

# # JSON MENU IDS
# ## CHALLENGE DESCRIPTION:
#
# You have JSON string which describes a menu. Calculate the SUM of
# IDs of all "items" in the case a "label" exists for an item.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a
# filename. Input example is the following
#
#     {"menu": {"header": "menu", "items": [{"id": 27}, {"id": 0, "label": "Label 0"}, null, {"id": 93}, {"id": 85}, {"id": 54}, null, {"id": 46, "label": "Label 46"}]}}
#
#     {"menu": {"header": "menu", "items": [{"id": 81}]}}
#
#     {"menu": {"header": "menu", "items": [{"id": 70, "label": "Label 70"}, {"id": 85, "label": "Label 85"}, {"id": 93, "label": "Label 93"}, {"id": 2}]}}
#
# All IDs are integers between 0 and 100. It can be 10 items maximum for a menu.
#
# ### OUTPUT SAMPLE:
#
# Print results in the following way.
#
#     46
#     0
#     248

describe "the read_json method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/102_json_menu_ids_sample.txt'

    json_object_one = {
    "menu"=>
      {"header"=>"menu",
       "items"=>
        [{"id"=>27},
         {"id"=>0, "label"=>"Label 0"},
         nil,
         {"id"=>93},
         {"id"=>85},
         {"id"=>54},
         nil,
         {"id"=>46, "label"=>"Label 46"}]}}

    json_object_two = {
      "menu"=>{"header"=>"menu", "items"=>[{"id"=>81}]}}

    json_object_three = {
      "menu"=>
        {"header"=>"menu",
         "items"=>
          [{"id"=>70, "label"=>"Label 70"},
           {"id"=>85, "label"=>"Label 85"},
           {"id"=>93, "label"=>"Label 93"},
           {"id"=>2}]}}

    json_objects = [json_object_one,
                    json_object_two,
                    json_object_three]

    expect(read_json(filename)).to eq(json_objects)
  end
end


describe "the even_numbers method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/102_json_menu_ids_sample.txt'
    $stdout = StringIO.new
    expected_output = "0\n" <<
                      "0\n" <<
                      "1\n"

    even_numbers(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
