def ask_step
  puts "S'il te plait, combien d'étage veux-tu pour cette pyramide ?"
  step = gets.to_i
  step = step + 1

    if step %2 != 0
      puts "Euh, je voulais dire un nombre impair please !"
      ask_step
    else
      step
    end
  end

def half_pyramid(step)
  step_ok = 0
  step.times do |n|
    puts " " * step + "#" * step_ok
    step = step - 1
    step_ok = step_ok + 1
  end
end

def full_pyramid(step)
  step_ok = 1
  step_vd = step
  n = 1
  while n < step
  puts " " * step_vd + "#" * step_ok
  step_vd = step_vd - 1
  step_ok = step_ok + 2
  n = n + 1
  end
end

def wtf_pyramid (step)
  step = step / 2
  full_pyramid(step)
  step_ok = step * 2 - 1
  step_vd = 1
  n = 0
  while n < step
  puts " " * step_vd + "#" * step_ok
  step_ok =  step_ok - 2
  step_vd = step_vd + 1
  n = n + 1
  end
end
wtf_pyramid(ask_step)
