require 'thor'

class Test < Thor
  desc 'hello NAME', 'Say hello to my name'
  long_desc <<-LONGDESC
    `test hello` will print out a message to a person of your
    choosing.

    You can optionally specify a second parameter, which will print
    out a from message as well.

    > $ cli hello "Yehuda Katz" "Carl Lerche"

    > from: Carl Lerche
  LONGDESC

  def hello(name)
    puts "hello #{name}"
  end
end

Test.start(ARGV)