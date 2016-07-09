def setTimeout(time, func, times = 0)
  exec = 1
  Thread.new {
    loop do
      eval func
      if times == exec
        Thread.kill(self)
      end
      exec += 1
      sleep(time)
    end
  }
end