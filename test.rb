# C21 H26 N7 O14 P2

# possible charges 
C = [4, 3, 2, 1, 0, -1, -2, -3, -4]
H = [1]
O = [-2]
N = [5, 4, 3, 2, 1, -1, -2, -3]
P = [5, 4, 3, 2, 1, -1, -2, -3]

p 'c * 21 + 27*h + 7*n + 14*o + p * 2 == 0'
C.each do |c|
  H.each do |h|
    O.each do |o|
      N.each do |n|
        P.each do |p|
          if c * 6 + 7*h + 1*n + 1*o + p * 0 == 0
            p "C(#{c}) H(#{h}) N(#{n}) O(#{o}) P(#{p}) "
          end
        end
      end
    end
  end  
end
  
p 'c * 21 + 26*h + 7*n + 14*o + p * 2 == 1'
C.each do |c|
  H.each do |h|
    O.each do |o|
      N.each do |n|
        P.each do |p|
          if c * 21 + 26*h + 7*n + 14*o + p * 2 == 1
            p "C(#{c}) H(#{h}) N(#{n}) O(#{o}) P(#{p}) "
          end
        end
      end
    end
  end  
end
  
