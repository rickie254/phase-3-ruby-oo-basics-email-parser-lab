# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
        @emails.split(/, |,| /).uniq
        # binding.pry
    end
end

e1 = EmailAddressParser.new("avi@test.com, arel@test.com")
puts e1.parse
e2 = EmailAddressParser.new("avi@test.com arel@test.com")
puts e2.parse