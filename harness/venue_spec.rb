require 'rspec'
require './lib/venue'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

describe Venue do
  let(:venue) { Venue.new('Bluebird', 4) }
  # Iteration 1
  describe 'Iteration 1' do
    it '1. Venue Instantiation' do
      expect(venue).to be_a Venue
    end

    it '2. Venue Attributes' do
      expect(venue.name).to eq 'Bluebird'
      expect(venue.capacity).to eq 4
      expect(venue.patrons).to eq []
    end
  end

  # Iteration 2

  describe 'Iteration 2' do
    it '3. #add_patron' do
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end

    it '4. #yell_at_patrons' do
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  # Iteration 3
  describe 'Iteration 3' do
    it '5. #over_capacity?' do
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      expect(venue.over_capacity?).to eq false

      venue.add_patron('Sally')
      expect(venue.over_capacity?).to eq true
    end
  end

  # Iteration 4
  describe 'Iteration 4' do
    it '6. #kick_out' do
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Sally')
      venue.add_patron('Toadstool')

      venue.kick_out
      expect(venue.patrons.count).to eq 4

      venue.kick_out
      expect(venue.patrons.count).to eq 4
    end
  end
end
