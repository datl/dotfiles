require 'pp'

require 'irb/completion'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irb_history")
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:INSPECT_MODE] = :pp

def t
  x = Time.now
  yield
  Time.now - x
end

def P(*args)
  p(*args)
  nil
end
