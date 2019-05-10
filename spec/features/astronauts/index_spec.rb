require "rails_helper"

describe "user sees all astronauts" do
  describe "user visits /astronauts" do
    astronaut_1 = Astronaut.new(name: "Neil Armstrong", age: 37, job: "Commander")
    astronaut_2 = Astronaut.new(name: "Avery Crider", age: 31, job: "Engineer")

    visit astronauts_path

    expect(page).to have_content("Neil Armstrong")
    expect(page).to have_content("37")
    expect(page).to have_content("Commander")
    expect(page).to have_content("Avery Crider")
    expect(page).to have_content("31")
    expect(page).to have_content("Engineer")

  end
end
