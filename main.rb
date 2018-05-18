require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts "MAIN MENU".colorize(:cyan)
    puts "1: Enter git command".colorize(:cyan)
    puts "2: View git config".colorize(:cyan)
    puts "3: Exit".colorize(:cyan)
    choice = gets.to_i

  case choice
    when 1
      puts "Enter a git command".colorize(:green)
      Git.puts_git(gets.strip)
      menu
    when 2
      Git.config
    when 3
      exit
    else
      puts "Invalid choice".colorize(:red)
      menu
    end
  end
end

Main.menu
