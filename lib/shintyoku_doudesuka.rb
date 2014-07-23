# coding: UTF-8
require "./shintyoku_doudesuka/version"

module ShintyokuDoudesuka
  class Talk
    SPEED = 3.0
    def initialize
      @step = 0.0
      @speed = SPEED
    end

    def succeed
      @step += @speed
      show
    end
    
    def show
      l = (@step/5).to_i
      print "[#{"="*l}#{" "*(20-l)}] "
    end

    def raise_problem
      @speed = SPEED * rand(10) * 0.1
    end
    
    def recover
      @speed = SPEED
    end

    def finished?
      @step >= 100
    end
    
    def comment
      print "#{min[@step.to_i,100]}% "
      print '進捗どうですか ＞ '
      if @speed > 2.0
        print 'いい感じです'
      else
        print 'ダメです'
      end
    end
  
  end

  class << self
    def clear
      print "\r#{' '*70}"
    end

    def run
      ta = Talk.new
      until ta.finished?
        clear
        print "\r"

        ta.recover if rand(5) > 2
        ta.raise_problem if rand(10) > 7
        ta.succeed
        ta.comment
        sleep 1
      end
      puts ""
      puts "できました"
    end

  end

  def run
    Talk.run
  end
end

# ShintyokuDoudesuka.run

