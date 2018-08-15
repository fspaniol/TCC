\* Problem: into *\

Minimize
 groups: + Y(1,h1) + Y(1,h2) + Y(1,h3) + Y(1,h4) + Y(1,h5) + Y(1,h6)
 + Y(1,h7) + Y(1,s1) + Y(1,s2) + Y(1,s3) + Y(1,s4) + Y(1,s5) + Y(1,s6)
 + Y(1,s7) + Y(1,s8) + Y(2,h1) + Y(2,h2) + Y(2,h3) + Y(2,h4) + Y(2,h5)
 + Y(2,h6) + Y(2,h7) + Y(2,s1) + Y(2,s2) + Y(2,s3) + Y(2,s4) + Y(2,s5)
 + Y(2,s6) + Y(2,s7) + Y(2,s8) + Y(3,h1) + Y(3,h2) + Y(3,h3) + Y(3,h4)
 + Y(3,h5) + Y(3,h6) + Y(3,h7) + Y(3,s1) + Y(3,s2) + Y(3,s3) + Y(3,s4)
 + Y(3,s5) + Y(3,s6) + Y(3,s7) + Y(3,s8) + Y(4,h1) + Y(4,h2) + Y(4,h3)
 + Y(4,h4) + Y(4,h5) + Y(4,h6) + Y(4,h7) + Y(4,s1) + Y(4,s2) + Y(4,s3)
 + Y(4,s4) + Y(4,s5) + Y(4,s6) + Y(4,s7) + Y(4,s8) + Y(5,h1) + Y(5,h2)
 + Y(5,h3) + Y(5,h4) + Y(5,h5) + Y(5,h6) + Y(5,h7) + Y(5,s1) + Y(5,s2)
 + Y(5,s3) + Y(5,s4) + Y(5,s5) + Y(5,s6) + Y(5,s7) + Y(5,s8) + Y(6,h1)
 + Y(6,h2) + Y(6,h3) + Y(6,h4) + Y(6,h5) + Y(6,h6) + Y(6,h7) + Y(6,s1)
 + Y(6,s2) + Y(6,s3) + Y(6,s4) + Y(6,s5) + Y(6,s6) + Y(6,s7) + Y(6,s8)
 + Y(7,h1) + Y(7,h2) + Y(7,h3) + Y(7,h4) + Y(7,h5) + Y(7,h6) + Y(7,h7)
 + Y(7,s1) + Y(7,s2) + Y(7,s3) + Y(7,s4) + Y(7,s5) + Y(7,s6) + Y(7,s7)
 + Y(7,s8) + Y(8,h1) + Y(8,h2) + Y(8,h3) + Y(8,h4) + Y(8,h5) + Y(8,h6)
 + Y(8,h7) + Y(8,s1) + Y(8,s2) + Y(8,s3) + Y(8,s4) + Y(8,s5) + Y(8,s6)
 + Y(8,s7) + Y(8,s8) + Y(9,h1) + Y(9,h2) + Y(9,h3) + Y(9,h4) + Y(9,h5)
 + Y(9,h6) + Y(9,h7) + Y(9,s1) + Y(9,s2) + Y(9,s3) + Y(9,s4) + Y(9,s5)
 + Y(9,s6) + Y(9,s7) + Y(9,s8) + Y(10,h1) + Y(10,h2) + Y(10,h3)
 + Y(10,h4) + Y(10,h5) + Y(10,h6) + Y(10,h7) + Y(10,s1) + Y(10,s2)
 + Y(10,s3) + Y(10,s4) + Y(10,s5) + Y(10,s6) + Y(10,s7) + Y(10,s8)
 + Y(11,h1) + Y(11,h2) + Y(11,h3) + Y(11,h4) + Y(11,h5) + Y(11,h6)
 + Y(11,h7) + Y(11,s1) + Y(11,s2) + Y(11,s3) + Y(11,s4) + Y(11,s5)
 + Y(11,s6) + Y(11,s7) + Y(11,s8) + Y(12,h1) + Y(12,h2) + Y(12,h3)
 + Y(12,h4) + Y(12,h5) + Y(12,h6) + Y(12,h7) + Y(12,s1) + Y(12,s2)
 + Y(12,s3) + Y(12,s4) + Y(12,s5) + Y(12,s6) + Y(12,s7) + Y(12,s8)

Subject To
 checkFlow(s1,h1): + X(s1,h1,1) + X(s1,h1,2) + X(s1,h1,3) + X(s1,h1,4)
 + X(s1,h1,5) + X(s1,h1,6) + X(s1,h1,7) + X(s1,h1,8) + X(s1,h1,9)
 + X(s1,h1,10) + X(s1,h1,11) + X(s1,h1,12) = 1
 checkFlow(s1,s2): + X(s1,s2,1) + X(s1,s2,2) + X(s1,s2,3) + X(s1,s2,4)
 + X(s1,s2,5) + X(s1,s2,6) + X(s1,s2,7) + X(s1,s2,8) + X(s1,s2,9)
 + X(s1,s2,10) + X(s1,s2,11) + X(s1,s2,12) = 1
 checkFlow(s2,s1): + X(s2,s1,1) + X(s2,s1,2) + X(s2,s1,3) + X(s2,s1,4)
 + X(s2,s1,5) + X(s2,s1,6) + X(s2,s1,7) + X(s2,s1,8) + X(s2,s1,9)
 + X(s2,s1,10) + X(s2,s1,11) + X(s2,s1,12) = 1
 checkFlow(s2,h2): + X(s2,h2,1) + X(s2,h2,2) + X(s2,h2,3) + X(s2,h2,4)
 + X(s2,h2,5) + X(s2,h2,6) + X(s2,h2,7) + X(s2,h2,8) + X(s2,h2,9)
 + X(s2,h2,10) + X(s2,h2,11) + X(s2,h2,12) = 1
 checkFlow(s2,s3): + X(s2,s3,1) + X(s2,s3,2) + X(s2,s3,3) + X(s2,s3,4)
 + X(s2,s3,5) + X(s2,s3,6) + X(s2,s3,7) + X(s2,s3,8) + X(s2,s3,9)
 + X(s2,s3,10) + X(s2,s3,11) + X(s2,s3,12) = 1
 checkFlow(s3,s2): + X(s3,s2,1) + X(s3,s2,2) + X(s3,s2,3) + X(s3,s2,4)
 + X(s3,s2,5) + X(s3,s2,6) + X(s3,s2,7) + X(s3,s2,8) + X(s3,s2,9)
 + X(s3,s2,10) + X(s3,s2,11) + X(s3,s2,12) = 1
 checkFlow(s2,s4): + X(s2,s4,1) + X(s2,s4,2) + X(s2,s4,3) + X(s2,s4,4)
 + X(s2,s4,5) + X(s2,s4,6) + X(s2,s4,7) + X(s2,s4,8) + X(s2,s4,9)
 + X(s2,s4,10) + X(s2,s4,11) + X(s2,s4,12) = 1
 checkFlow(s4,s2): + X(s4,s2,1) + X(s4,s2,2) + X(s4,s2,3) + X(s4,s2,4)
 + X(s4,s2,5) + X(s4,s2,6) + X(s4,s2,7) + X(s4,s2,8) + X(s4,s2,9)
 + X(s4,s2,10) + X(s4,s2,11) + X(s4,s2,12) = 1
 checkFlow(s3,h3): + X(s3,h3,1) + X(s3,h3,2) + X(s3,h3,3) + X(s3,h3,4)
 + X(s3,h3,5) + X(s3,h3,6) + X(s3,h3,7) + X(s3,h3,8) + X(s3,h3,9)
 + X(s3,h3,10) + X(s3,h3,11) + X(s3,h3,12) = 1
 checkFlow(s3,s4): + X(s3,s4,1) + X(s3,s4,2) + X(s3,s4,3) + X(s3,s4,4)
 + X(s3,s4,5) + X(s3,s4,6) + X(s3,s4,7) + X(s3,s4,8) + X(s3,s4,9)
 + X(s3,s4,10) + X(s3,s4,11) + X(s3,s4,12) = 1
 checkFlow(s4,s3): + X(s4,s3,1) + X(s4,s3,2) + X(s4,s3,3) + X(s4,s3,4)
 + X(s4,s3,5) + X(s4,s3,6) + X(s4,s3,7) + X(s4,s3,8) + X(s4,s3,9)
 + X(s4,s3,10) + X(s4,s3,11) + X(s4,s3,12) = 1
 checkFlow(s4,s5): + X(s4,s5,1) + X(s4,s5,2) + X(s4,s5,3) + X(s4,s5,4)
 + X(s4,s5,5) + X(s4,s5,6) + X(s4,s5,7) + X(s4,s5,8) + X(s4,s5,9)
 + X(s4,s5,10) + X(s4,s5,11) + X(s4,s5,12) = 1
 checkFlow(s5,s4): + X(s5,s4,1) + X(s5,s4,2) + X(s5,s4,3) + X(s5,s4,4)
 + X(s5,s4,5) + X(s5,s4,6) + X(s5,s4,7) + X(s5,s4,8) + X(s5,s4,9)
 + X(s5,s4,10) + X(s5,s4,11) + X(s5,s4,12) = 1
 checkFlow(s5,h4): + X(s5,h4,1) + X(s5,h4,2) + X(s5,h4,3) + X(s5,h4,4)
 + X(s5,h4,5) + X(s5,h4,6) + X(s5,h4,7) + X(s5,h4,8) + X(s5,h4,9)
 + X(s5,h4,10) + X(s5,h4,11) + X(s5,h4,12) = 1
 checkFlow(s4,s6): + X(s4,s6,1) + X(s4,s6,2) + X(s4,s6,3) + X(s4,s6,4)
 + X(s4,s6,5) + X(s4,s6,6) + X(s4,s6,7) + X(s4,s6,8) + X(s4,s6,9)
 + X(s4,s6,10) + X(s4,s6,11) + X(s4,s6,12) = 1
 checkFlow(s6,s4): + X(s6,s4,1) + X(s6,s4,2) + X(s6,s4,3) + X(s6,s4,4)
 + X(s6,s4,5) + X(s6,s4,6) + X(s6,s4,7) + X(s6,s4,8) + X(s6,s4,9)
 + X(s6,s4,10) + X(s6,s4,11) + X(s6,s4,12) = 1
 checkFlow(s6,h5): + X(s6,h5,1) + X(s6,h5,2) + X(s6,h5,3) + X(s6,h5,4)
 + X(s6,h5,5) + X(s6,h5,6) + X(s6,h5,7) + X(s6,h5,8) + X(s6,h5,9)
 + X(s6,h5,10) + X(s6,h5,11) + X(s6,h5,12) = 1
 checkFlow(s6,s8): + X(s6,s8,1) + X(s6,s8,2) + X(s6,s8,3) + X(s6,s8,4)
 + X(s6,s8,5) + X(s6,s8,6) + X(s6,s8,7) + X(s6,s8,8) + X(s6,s8,9)
 + X(s6,s8,10) + X(s6,s8,11) + X(s6,s8,12) = 1
 checkFlow(s8,s6): + X(s8,s6,1) + X(s8,s6,2) + X(s8,s6,3) + X(s8,s6,4)
 + X(s8,s6,5) + X(s8,s6,6) + X(s8,s6,7) + X(s8,s6,8) + X(s8,s6,9)
 + X(s8,s6,10) + X(s8,s6,11) + X(s8,s6,12) = 1
 checkFlow(s8,h7): + X(s8,h7,1) + X(s8,h7,2) + X(s8,h7,3) + X(s8,h7,4)
 + X(s8,h7,5) + X(s8,h7,6) + X(s8,h7,7) + X(s8,h7,8) + X(s8,h7,9)
 + X(s8,h7,10) + X(s8,h7,11) + X(s8,h7,12) = 1
 checkFlow(s4,s7): + X(s4,s7,1) + X(s4,s7,2) + X(s4,s7,3) + X(s4,s7,4)
 + X(s4,s7,5) + X(s4,s7,6) + X(s4,s7,7) + X(s4,s7,8) + X(s4,s7,9)
 + X(s4,s7,10) + X(s4,s7,11) + X(s4,s7,12) = 1
 checkFlow(s7,s4): + X(s7,s4,1) + X(s7,s4,2) + X(s7,s4,3) + X(s7,s4,4)
 + X(s7,s4,5) + X(s7,s4,6) + X(s7,s4,7) + X(s7,s4,8) + X(s7,s4,9)
 + X(s7,s4,10) + X(s7,s4,11) + X(s7,s4,12) = 1
 checkFlow(s7,h6): + X(s7,h6,1) + X(s7,h6,2) + X(s7,h6,3) + X(s7,h6,4)
 + X(s7,h6,5) + X(s7,h6,6) + X(s7,h6,7) + X(s7,h6,8) + X(s7,h6,9)
 + X(s7,h6,10) + X(s7,h6,11) + X(s7,h6,12) = 1
 sameFlow(1,s1,h1): + X(s1,h1,1) = -0
 sameFlow(1,s2,s1): + X(s2,s1,1) = -0
 sameFlow(1,s2,h2): + X(s2,h2,1) = -0
 sameFlow(1,s2,s3): + X(s2,s3,1) = -0
 sameFlow(1,s3,s2): + X(s3,s2,1) = -0
 sameFlow(1,s4,s2): + X(s4,s2,1) = -0
 sameFlow(1,s3,h3): + X(s3,h3,1) = -0
 sameFlow(1,s3,s4): + X(s3,s4,1) = -0
 sameFlow(1,s4,s3): + X(s4,s3,1) = -0
 sameFlow(1,s4,s5): + X(s4,s5,1) = -0
 sameFlow(1,s5,s4): + X(s5,s4,1) = -0
 sameFlow(1,s5,h4): + X(s5,h4,1) = -0
 sameFlow(1,s6,s4): + X(s6,s4,1) = -0
 sameFlow(1,s6,h5): + X(s6,h5,1) = -0
 sameFlow(1,s8,s6): + X(s8,s6,1) = -0
 sameFlow(1,s4,s7): + X(s4,s7,1) = -0
 sameFlow(1,s7,s4): + X(s7,s4,1) = -0
 sameFlow(1,s7,h6): + X(s7,h6,1) = -0
 sameFlow(2,s1,h1): + X(s1,h1,2) = -0
 sameFlow(2,s1,s2): + X(s1,s2,2) = -0
 sameFlow(2,s2,s1): + X(s2,s1,2) = -0
 sameFlow(2,s2,h2): + X(s2,h2,2) = -0
 sameFlow(2,s3,s2): + X(s3,s2,2) = -0
 sameFlow(2,s2,s4): + X(s2,s4,2) = -0
 sameFlow(2,s4,s2): + X(s4,s2,2) = -0
 sameFlow(2,s3,s4): + X(s3,s4,2) = -0
 sameFlow(2,s4,s3): + X(s4,s3,2) = -0
 sameFlow(2,s4,s5): + X(s4,s5,2) = -0
 sameFlow(2,s5,s4): + X(s5,s4,2) = -0
 sameFlow(2,s5,h4): + X(s5,h4,2) = -0
 sameFlow(2,s4,s6): + X(s4,s6,2) = -0
 sameFlow(2,s6,s4): + X(s6,s4,2) = -0
 sameFlow(2,s6,h5): + X(s6,h5,2) = -0
 sameFlow(2,s6,s8): + X(s6,s8,2) = -0
 sameFlow(2,s8,s6): + X(s8,s6,2) = -0
 sameFlow(2,s8,h7): + X(s8,h7,2) = -0
 sameFlow(2,s4,s7): + X(s4,s7,2) = -0
 sameFlow(2,s7,s4): + X(s7,s4,2) = -0
 sameFlow(2,s7,h6): + X(s7,h6,2) = -0
 sameFlow(3,s1,h1): + X(s1,h1,3) = -0
 sameFlow(3,s1,s2): + X(s1,s2,3) = -0
 sameFlow(3,s2,s1): + X(s2,s1,3) = -0
 sameFlow(3,s2,h2): + X(s2,h2,3) = -0
 sameFlow(3,s2,s3): + X(s2,s3,3) = -0
 sameFlow(3,s3,s2): + X(s3,s2,3) = -0
 sameFlow(3,s2,s4): + X(s2,s4,3) = -0
 sameFlow(3,s4,s2): + X(s4,s2,3) = -0
 sameFlow(3,s3,h3): + X(s3,h3,3) = -0
 sameFlow(3,s4,s3): + X(s4,s3,3) = -0
 sameFlow(3,s4,s5): + X(s4,s5,3) = -0
 sameFlow(3,s5,s4): + X(s5,s4,3) = -0
 sameFlow(3,s5,h4): + X(s5,h4,3) = -0
 sameFlow(3,s6,s4): + X(s6,s4,3) = -0
 sameFlow(3,s6,s8): + X(s6,s8,3) = -0
 sameFlow(3,s8,s6): + X(s8,s6,3) = -0
 sameFlow(3,s8,h7): + X(s8,h7,3) = -0
 sameFlow(3,s4,s7): + X(s4,s7,3) = -0
 sameFlow(3,s7,s4): + X(s7,s4,3) = -0
 sameFlow(3,s7,h6): + X(s7,h6,3) = -0
 sameFlow(4,s1,h1): + X(s1,h1,4) = -0
 sameFlow(4,s1,s2): + X(s1,s2,4) = -0
 sameFlow(4,s2,s1): + X(s2,s1,4) = -0
 sameFlow(4,s2,s3): + X(s2,s3,4) = -0
 sameFlow(4,s3,s2): + X(s3,s2,4) = -0
 sameFlow(4,s2,s4): + X(s2,s4,4) = -0
 sameFlow(4,s3,h3): + X(s3,h3,4) = -0
 sameFlow(4,s3,s4): + X(s3,s4,4) = -0
 sameFlow(4,s4,s3): + X(s4,s3,4) = -0
 sameFlow(4,s4,s5): + X(s4,s5,4) = -0
 sameFlow(4,s5,h4): + X(s5,h4,4) = -0
 sameFlow(4,s4,s6): + X(s4,s6,4) = -0
 sameFlow(4,s6,s4): + X(s6,s4,4) = -0
 sameFlow(4,s6,h5): + X(s6,h5,4) = -0
 sameFlow(4,s6,s8): + X(s6,s8,4) = -0
 sameFlow(4,s8,s6): + X(s8,s6,4) = -0
 sameFlow(4,s8,h7): + X(s8,h7,4) = -0
 sameFlow(4,s4,s7): + X(s4,s7,4) = -0
 sameFlow(4,s7,s4): + X(s7,s4,4) = -0
 sameFlow(4,s7,h6): + X(s7,h6,4) = -0
 sameFlow(5,s1,s2): + X(s1,s2,5) = -0
 sameFlow(5,s2,h2): + X(s2,h2,5) = -0
 sameFlow(5,s2,s3): + X(s2,s3,5) = -0
 sameFlow(5,s3,s2): + X(s3,s2,5) = -0
 sameFlow(5,s2,s4): + X(s2,s4,5) = -0
 sameFlow(5,s3,h3): + X(s3,h3,5) = -0
 sameFlow(5,s3,s4): + X(s3,s4,5) = -0
 sameFlow(5,s4,s3): + X(s4,s3,5) = -0
 sameFlow(5,s4,s5): + X(s4,s5,5) = -0
 sameFlow(5,s5,s4): + X(s5,s4,5) = -0
 sameFlow(5,s5,h4): + X(s5,h4,5) = -0
 sameFlow(5,s4,s6): + X(s4,s6,5) = -0
 sameFlow(5,s6,h5): + X(s6,h5,5) = -0
 sameFlow(5,s6,s8): + X(s6,s8,5) = -0
 sameFlow(5,s8,s6): + X(s8,s6,5) = -0
 sameFlow(5,s8,h7): + X(s8,h7,5) = -0
 sameFlow(5,s4,s7): + X(s4,s7,5) = -0
 sameFlow(5,s7,s4): + X(s7,s4,5) = -0
 sameFlow(5,s7,h6): + X(s7,h6,5) = -0
 sameFlow(6,s1,h1): + X(s1,h1,6) = -0
 sameFlow(6,s1,s2): + X(s1,s2,6) = -0
 sameFlow(6,s2,s1): + X(s2,s1,6) = -0
 sameFlow(6,s2,h2): + X(s2,h2,6) = -0
 sameFlow(6,s2,s3): + X(s2,s3,6) = -0
 sameFlow(6,s3,s2): + X(s3,s2,6) = -0
 sameFlow(6,s2,s4): + X(s2,s4,6) = -0
 sameFlow(6,s4,s2): + X(s4,s2,6) = -0
 sameFlow(6,s3,s4): + X(s3,s4,6) = -0
 sameFlow(6,s4,s5): + X(s4,s5,6) = -0
 sameFlow(6,s5,s4): + X(s5,s4,6) = -0
 sameFlow(6,s5,h4): + X(s5,h4,6) = -0
 sameFlow(6,s4,s6): + X(s4,s6,6) = -0
 sameFlow(6,s6,s4): + X(s6,s4,6) = -0
 sameFlow(6,s6,h5): + X(s6,h5,6) = -0
 sameFlow(6,s6,s8): + X(s6,s8,6) = -0
 sameFlow(6,s8,s6): + X(s8,s6,6) = -0
 sameFlow(6,s8,h7): + X(s8,h7,6) = -0
 sameFlow(6,s4,s7): + X(s4,s7,6) = -0
 sameFlow(6,s7,h6): + X(s7,h6,6) = -0
 sameFlow(7,s1,s2): + X(s1,s2,7) = -0
 sameFlow(7,s2,h2): + X(s2,h2,7) = -0
 sameFlow(7,s2,s3): + X(s2,s3,7) = -0
 sameFlow(7,s3,s2): + X(s3,s2,7) = -0
 sameFlow(7,s2,s4): + X(s2,s4,7) = -0
 sameFlow(7,s3,h3): + X(s3,h3,7) = -0
 sameFlow(7,s3,s4): + X(s3,s4,7) = -0
 sameFlow(7,s4,s3): + X(s4,s3,7) = -0
 sameFlow(7,s4,s5): + X(s4,s5,7) = -0
 sameFlow(7,s5,s4): + X(s5,s4,7) = -0
 sameFlow(7,s5,h4): + X(s5,h4,7) = -0
 sameFlow(7,s4,s6): + X(s4,s6,7) = -0
 sameFlow(7,s6,h5): + X(s6,h5,7) = -0
 sameFlow(7,s6,s8): + X(s6,s8,7) = -0
 sameFlow(7,s8,h7): + X(s8,h7,7) = -0
 sameFlow(7,s4,s7): + X(s4,s7,7) = -0
 sameFlow(7,s7,s4): + X(s7,s4,7) = -0
 sameFlow(7,s7,h6): + X(s7,h6,7) = -0
 sameFlow(8,s1,s2): + X(s1,s2,8) = -0
 sameFlow(8,s2,h2): + X(s2,h2,8) = -0
 sameFlow(8,s2,s3): + X(s2,s3,8) = -0
 sameFlow(8,s2,s4): + X(s2,s4,8) = -0
 sameFlow(8,s4,s2): + X(s4,s2,8) = -0
 sameFlow(8,s3,h3): + X(s3,h3,8) = -0
 sameFlow(8,s3,s4): + X(s3,s4,8) = -0
 sameFlow(8,s4,s3): + X(s4,s3,8) = -0
 sameFlow(8,s4,s5): + X(s4,s5,8) = -0
 sameFlow(8,s5,s4): + X(s5,s4,8) = -0
 sameFlow(8,s5,h4): + X(s5,h4,8) = -0
 sameFlow(8,s4,s6): + X(s4,s6,8) = -0
 sameFlow(8,s6,s4): + X(s6,s4,8) = -0
 sameFlow(8,s6,h5): + X(s6,h5,8) = -0
 sameFlow(8,s6,s8): + X(s6,s8,8) = -0
 sameFlow(8,s8,s6): + X(s8,s6,8) = -0
 sameFlow(8,s8,h7): + X(s8,h7,8) = -0
 sameFlow(8,s4,s7): + X(s4,s7,8) = -0
 sameFlow(8,s7,s4): + X(s7,s4,8) = -0
 sameFlow(8,s7,h6): + X(s7,h6,8) = -0
 sameFlow(9,s1,h1): + X(s1,h1,9) = -0
 sameFlow(9,s1,s2): + X(s1,s2,9) = -0
 sameFlow(9,s2,s1): + X(s2,s1,9) = -0
 sameFlow(9,s2,h2): + X(s2,h2,9) = -0
 sameFlow(9,s2,s3): + X(s2,s3,9) = -0
 sameFlow(9,s3,s2): + X(s3,s2,9) = -0
 sameFlow(9,s2,s4): + X(s2,s4,9) = -0
 sameFlow(9,s4,s2): + X(s4,s2,9) = -0
 sameFlow(9,s3,h3): + X(s3,h3,9) = -0
 sameFlow(9,s3,s4): + X(s3,s4,9) = -0
 sameFlow(9,s4,s3): + X(s4,s3,9) = -0
 sameFlow(9,s4,s5): + X(s4,s5,9) = -0
 sameFlow(9,s5,h4): + X(s5,h4,9) = -0
 sameFlow(9,s6,s4): + X(s6,s4,9) = -0
 sameFlow(9,s6,s8): + X(s6,s8,9) = -0
 sameFlow(9,s8,s6): + X(s8,s6,9) = -0
 sameFlow(9,s8,h7): + X(s8,h7,9) = -0
 sameFlow(9,s4,s7): + X(s4,s7,9) = -0
 sameFlow(9,s7,s4): + X(s7,s4,9) = -0
 sameFlow(9,s7,h6): + X(s7,h6,9) = -0
 sameFlow(10,s1,h1): + X(s1,h1,10) = -0
 sameFlow(10,s1,s2): + X(s1,s2,10) = -0
 sameFlow(10,s2,s1): + X(s2,s1,10) = -0
 sameFlow(10,s2,h2): + X(s2,h2,10) = -0
 sameFlow(10,s2,s3): + X(s2,s3,10) = -0
 sameFlow(10,s3,s2): + X(s3,s2,10) = -0
 sameFlow(10,s4,s2): + X(s4,s2,10) = -0
 sameFlow(10,s3,h3): + X(s3,h3,10) = -0
 sameFlow(10,s3,s4): + X(s3,s4,10) = -0
 sameFlow(10,s4,s3): + X(s4,s3,10) = -0
 sameFlow(10,s4,s5): + X(s4,s5,10) = -0
 sameFlow(10,s5,s4): + X(s5,s4,10) = -0
 sameFlow(10,s5,h4): + X(s5,h4,10) = -0
 sameFlow(10,s6,s4): + X(s6,s4,10) = -0
 sameFlow(10,s6,h5): + X(s6,h5,10) = -0
 sameFlow(10,s8,s6): + X(s8,s6,10) = -0
 sameFlow(10,s4,s7): + X(s4,s7,10) = -0
 sameFlow(10,s7,s4): + X(s7,s4,10) = -0
 sameFlow(10,s7,h6): + X(s7,h6,10) = -0
 sameFlow(11,s1,h1): + X(s1,h1,11) = -0
 sameFlow(11,s1,s2): + X(s1,s2,11) = -0
 sameFlow(11,s2,s1): + X(s2,s1,11) = -0
 sameFlow(11,s2,h2): + X(s2,h2,11) = -0
 sameFlow(11,s2,s3): + X(s2,s3,11) = -0
 sameFlow(11,s3,s2): + X(s3,s2,11) = -0
 sameFlow(11,s2,s4): + X(s2,s4,11) = -0
 sameFlow(11,s4,s2): + X(s4,s2,11) = -0
 sameFlow(11,s3,h3): + X(s3,h3,11) = -0
 sameFlow(11,s3,s4): + X(s3,s4,11) = -0
 sameFlow(11,s4,s3): + X(s4,s3,11) = -0
 sameFlow(11,s5,s4): + X(s5,s4,11) = -0
 sameFlow(11,s4,s6): + X(s4,s6,11) = -0
 sameFlow(11,s6,h5): + X(s6,h5,11) = -0
 sameFlow(11,s6,s8): + X(s6,s8,11) = -0
 sameFlow(11,s8,h7): + X(s8,h7,11) = -0
 sameFlow(11,s4,s7): + X(s4,s7,11) = -0
 sameFlow(11,s7,s4): + X(s7,s4,11) = -0
 sameFlow(11,s7,h6): + X(s7,h6,11) = -0
 sameFlow(12,s1,h1): + X(s1,h1,12) = -0
 sameFlow(12,s1,s2): + X(s1,s2,12) = -0
 sameFlow(12,s2,s1): + X(s2,s1,12) = -0
 sameFlow(12,s2,h2): + X(s2,h2,12) = -0
 sameFlow(12,s2,s3): + X(s2,s3,12) = -0
 sameFlow(12,s3,s2): + X(s3,s2,12) = -0
 sameFlow(12,s2,s4): + X(s2,s4,12) = -0
 sameFlow(12,s4,s2): + X(s4,s2,12) = -0
 sameFlow(12,s3,h3): + X(s3,h3,12) = -0
 sameFlow(12,s3,s4): + X(s3,s4,12) = -0
 sameFlow(12,s4,s3): + X(s4,s3,12) = -0
 sameFlow(12,s4,s5): + X(s4,s5,12) = -0
 sameFlow(12,s5,s4): + X(s5,s4,12) = -0
 sameFlow(12,s5,h4): + X(s5,h4,12) = -0
 sameFlow(12,s4,s6): + X(s4,s6,12) = -0
 sameFlow(12,s6,h5): + X(s6,h5,12) = -0
 sameFlow(12,s6,s8): + X(s6,s8,12) = -0
 sameFlow(12,s8,s6): + X(s8,s6,12) = -0
 sameFlow(12,s8,h7): + X(s8,h7,12) = -0
 sameFlow(12,s7,s4): + X(s7,s4,12) = -0
 deliver(1,s1,s2): - Y(1,s1) + X(s1,s2,1) >= -0
 deliver(1,s2,s4): - Y(1,s2) + X(s2,s4,1) >= -0
 deliver(1,s4,s6): - Y(1,s4) + X(s4,s6,1) >= -0
 deliver(1,s6,s8): - Y(1,s6) + X(s6,s8,1) >= -0
 deliver(1,s8,h7): - Y(1,s8) + X(s8,h7,1) >= -0
 deliver(2,s2,s3): - Y(2,s2) + X(s2,s3,2) >= -0
 deliver(2,s3,h3): - Y(2,s3) + X(s3,h3,2) >= -0
 deliver(3,s3,s4): - Y(3,s3) + X(s3,s4,3) >= -0
 deliver(3,s4,s6): - Y(3,s4) + X(s4,s6,3) >= -0
 deliver(3,s6,h5): - Y(3,s6) + X(s6,h5,3) >= -0
 deliver(4,s5,s4): - Y(4,s5) + X(s5,s4,4) >= -0
 deliver(4,s4,s2): - Y(4,s4) + X(s4,s2,4) >= -0
 deliver(4,s2,h2): - Y(4,s2) + X(s2,h2,4) >= -0
 deliver(5,s6,s4): - Y(5,s6) + X(s6,s4,5) >= -0
 deliver(5,s4,s2): - Y(5,s4) + X(s4,s2,5) >= -0
 deliver(5,s2,s1): - Y(5,s2) + X(s2,s1,5) >= -0
 deliver(5,s1,h1): - Y(5,s1) + X(s1,h1,5) >= -0
 deliver(6,s7,s4): - Y(6,s7) + X(s7,s4,6) >= -0
 deliver(6,s4,s3): - Y(6,s4) + X(s4,s3,6) >= -0
 deliver(6,s3,h3): - Y(6,s3) + X(s3,h3,6) >= -0
 deliver(7,s8,s6): - Y(7,s8) + X(s8,s6,7) >= -0
 deliver(7,s6,s4): - Y(7,s6) + X(s6,s4,7) >= -0
 deliver(7,s4,s2): - Y(7,s4) + X(s4,s2,7) >= -0
 deliver(7,s2,s1): - Y(7,s2) + X(s2,s1,7) >= -0
 deliver(7,s1,h1): - Y(7,s1) + X(s1,h1,7) >= -0
 deliver(8,s3,s2): - Y(8,s3) + X(s3,s2,8) >= -0
 deliver(8,s2,s1): - Y(8,s2) + X(s2,s1,8) >= -0
 deliver(8,s1,h1): - Y(8,s1) + X(s1,h1,8) >= -0
 deliver(9,s5,s4): - Y(9,s5) + X(s5,s4,9) >= -0
 deliver(9,s4,s6): - Y(9,s4) + X(s4,s6,9) >= -0
 deliver(9,s6,h5): - Y(9,s6) + X(s6,h5,9) >= -0
 deliver(10,s2,s4): - Y(10,s2) + X(s2,s4,10) >= -0
 deliver(10,s4,s6): - Y(10,s4) + X(s4,s6,10) >= -0
 deliver(10,s6,s8): - Y(10,s6) + X(s6,s8,10) >= -0
 deliver(10,s8,h7): - Y(10,s8) + X(s8,h7,10) >= -0
 deliver(11,s8,s6): - Y(11,s8) + X(s8,s6,11) >= -0
 deliver(11,s6,s4): - Y(11,s6) + X(s6,s4,11) >= -0
 deliver(11,s4,s5): - Y(11,s4) + X(s4,s5,11) >= -0
 deliver(11,s5,h4): - Y(11,s5) + X(s5,h4,11) >= -0
 deliver(12,s6,s4): - Y(12,s6) + X(s6,s4,12) >= -0
 deliver(12,s4,s7): - Y(12,s4) + X(s4,s7,12) >= -0
 deliver(12,s7,h6): - Y(12,s7) + X(s7,h6,12) >= -0
 receive(1,s1,s2): + C(1,s1) - 2 X(s1,s2,1) <= -0
 receive(1,s2,s4): + C(1,s2) - 2 X(s2,s4,1) <= -0
 receive(1,s4,s6): + C(1,s4) - 2 X(s4,s6,1) <= -0
 receive(1,s6,s8): + C(1,s6) - 2 X(s6,s8,1) <= -0
 receive(1,s8,h7): + C(1,s8) - 2 X(s8,h7,1) <= -0
 receive(2,s2,s3): + C(2,s2) - 2 X(s2,s3,2) <= -0
 receive(2,s3,h3): + C(2,s3) - 2 X(s3,h3,2) <= -0
 receive(3,s3,s4): + C(3,s3) - 2 X(s3,s4,3) <= -0
 receive(3,s4,s6): + C(3,s4) - 2 X(s4,s6,3) <= -0
 receive(3,s6,h5): + C(3,s6) - 2 X(s6,h5,3) <= -0
 receive(4,s5,s4): + C(4,s5) - 2 X(s5,s4,4) <= -0
 receive(4,s4,s2): + C(4,s4) - 2 X(s4,s2,4) <= -0
 receive(4,s2,h2): + C(4,s2) - 2 X(s2,h2,4) <= -0
 receive(5,s6,s4): + C(5,s6) - 2 X(s6,s4,5) <= -0
 receive(5,s4,s2): + C(5,s4) - 2 X(s4,s2,5) <= -0
 receive(5,s2,s1): + C(5,s2) - 2 X(s2,s1,5) <= -0
 receive(5,s1,h1): + C(5,s1) - 2 X(s1,h1,5) <= -0
 receive(6,s7,s4): + C(6,s7) - 2 X(s7,s4,6) <= -0
 receive(6,s4,s3): + C(6,s4) - 2 X(s4,s3,6) <= -0
 receive(6,s3,h3): + C(6,s3) - 2 X(s3,h3,6) <= -0
 receive(7,s8,s6): + C(7,s8) - 2 X(s8,s6,7) <= -0
 receive(7,s6,s4): + C(7,s6) - 2 X(s6,s4,7) <= -0
 receive(7,s4,s2): + C(7,s4) - 2 X(s4,s2,7) <= -0
 receive(7,s2,s1): + C(7,s2) - 2 X(s2,s1,7) <= -0
 receive(7,s1,h1): + C(7,s1) - 2 X(s1,h1,7) <= -0
 receive(8,s3,s2): + C(8,s3) - 2 X(s3,s2,8) <= -0
 receive(8,s2,s1): + C(8,s2) - 2 X(s2,s1,8) <= -0
 receive(8,s1,h1): + C(8,s1) - 2 X(s1,h1,8) <= -0
 receive(9,s5,s4): + C(9,s5) - 2 X(s5,s4,9) <= -0
 receive(9,s4,s6): + C(9,s4) - 2 X(s4,s6,9) <= -0
 receive(9,s6,h5): + C(9,s6) - 2 X(s6,h5,9) <= -0
 receive(10,s2,s4): + C(10,s2) - 2 X(s2,s4,10) <= -0
 receive(10,s4,s6): + C(10,s4) - 2 X(s4,s6,10) <= -0
 receive(10,s6,s8): + C(10,s6) - 2 X(s6,s8,10) <= -0
 receive(10,s8,h7): + C(10,s8) - 2 X(s8,h7,10) <= -0
 receive(11,s8,s6): + C(11,s8) - 2 X(s8,s6,11) <= -0
 receive(11,s6,s4): + C(11,s6) - 2 X(s6,s4,11) <= -0
 receive(11,s4,s5): + C(11,s4) - 2 X(s4,s5,11) <= -0
 receive(11,s5,h4): + C(11,s5) - 2 X(s5,h4,11) <= -0
 receive(12,s6,s4): + C(12,s6) - 2 X(s6,s4,12) <= -0
 receive(12,s4,s7): + C(12,s4) - 2 X(s4,s7,12) <= -0
 receive(12,s7,h6): + C(12,s7) - 2 X(s7,h6,12) <= -0
 weight1(1,s1,s2): + C(1,s2) + Y(1,s1) - X(s1,s2,1) >= -0
 weight1(1,s2,s4): + C(1,s4) + Y(1,s2) - X(s2,s4,1) >= -0
 weight1(1,s4,s6): + C(1,s6) + Y(1,s4) - X(s4,s6,1) >= -0
 weight1(1,s6,s8): + C(1,s8) + Y(1,s6) - X(s6,s8,1) >= -0
 weight1(1,s8,h7): + C(1,h7) + Y(1,s8) - X(s8,h7,1) >= -0
 weight1(2,s2,s3): + C(2,s3) + Y(2,s2) - X(s2,s3,2) >= -0
 weight1(2,s3,h3): + C(2,h3) + Y(2,s3) - X(s3,h3,2) >= -0
 weight1(3,s3,s4): + C(3,s4) + Y(3,s3) - X(s3,s4,3) >= -0
 weight1(3,s4,s6): + C(3,s6) + Y(3,s4) - X(s4,s6,3) >= -0
 weight1(3,s6,h5): + C(3,h5) + Y(3,s6) - X(s6,h5,3) >= -0
 weight1(4,s5,s4): + C(4,s4) + Y(4,s5) - X(s5,s4,4) >= -0
 weight1(4,s4,s2): + C(4,s2) + Y(4,s4) - X(s4,s2,4) >= -0
 weight1(4,s2,h2): + C(4,h2) + Y(4,s2) - X(s2,h2,4) >= -0
 weight1(5,s6,s4): + C(5,s4) + Y(5,s6) - X(s6,s4,5) >= -0
 weight1(5,s4,s2): + C(5,s2) + Y(5,s4) - X(s4,s2,5) >= -0
 weight1(5,s2,s1): + C(5,s1) + Y(5,s2) - X(s2,s1,5) >= -0
 weight1(5,s1,h1): + C(5,h1) + Y(5,s1) - X(s1,h1,5) >= -0
 weight1(6,s7,s4): + C(6,s4) + Y(6,s7) - X(s7,s4,6) >= -0
 weight1(6,s4,s3): + C(6,s3) + Y(6,s4) - X(s4,s3,6) >= -0
 weight1(6,s3,h3): + C(6,h3) + Y(6,s3) - X(s3,h3,6) >= -0
 weight1(7,s8,s6): + C(7,s6) + Y(7,s8) - X(s8,s6,7) >= -0
 weight1(7,s6,s4): + C(7,s4) + Y(7,s6) - X(s6,s4,7) >= -0
 weight1(7,s4,s2): + C(7,s2) + Y(7,s4) - X(s4,s2,7) >= -0
 weight1(7,s2,s1): + C(7,s1) + Y(7,s2) - X(s2,s1,7) >= -0
 weight1(7,s1,h1): + C(7,h1) + Y(7,s1) - X(s1,h1,7) >= -0
 weight1(8,s3,s2): + C(8,s2) + Y(8,s3) - X(s3,s2,8) >= -0
 weight1(8,s2,s1): + C(8,s1) + Y(8,s2) - X(s2,s1,8) >= -0
 weight1(8,s1,h1): + C(8,h1) + Y(8,s1) - X(s1,h1,8) >= -0
 weight1(9,s5,s4): + C(9,s4) + Y(9,s5) - X(s5,s4,9) >= -0
 weight1(9,s4,s6): + C(9,s6) + Y(9,s4) - X(s4,s6,9) >= -0
 weight1(9,s6,h5): + C(9,h5) + Y(9,s6) - X(s6,h5,9) >= -0
 weight1(10,s2,s4): + C(10,s4) + Y(10,s2) - X(s2,s4,10) >= -0
 weight1(10,s4,s6): + C(10,s6) + Y(10,s4) - X(s4,s6,10) >= -0
 weight1(10,s6,s8): + C(10,s8) + Y(10,s6) - X(s6,s8,10) >= -0
 weight1(10,s8,h7): + C(10,h7) + Y(10,s8) - X(s8,h7,10) >= -0
 weight1(11,s8,s6): + C(11,s6) + Y(11,s8) - X(s8,s6,11) >= -0
 weight1(11,s6,s4): + C(11,s4) + Y(11,s6) - X(s6,s4,11) >= -0
 weight1(11,s4,s5): + C(11,s5) + Y(11,s4) - X(s4,s5,11) >= -0
 weight1(11,s5,h4): + C(11,h4) + Y(11,s5) - X(s5,h4,11) >= -0
 weight1(12,s6,s4): + C(12,s4) + Y(12,s6) - X(s6,s4,12) >= -0
 weight1(12,s4,s7): + C(12,s7) + Y(12,s4) - X(s4,s7,12) >= -0
 weight1(12,s7,h6): + C(12,h6) + Y(12,s7) - X(s7,h6,12) >= -0
 weight2(1,s1,s2): - C(1,s2) - 2 Y(1,s1) + 2 X(s1,s2,1) >= -0
 weight2(1,s2,s4): - C(1,s4) - 2 Y(1,s2) + 2 X(s2,s4,1) >= -0
 weight2(1,s4,s6): - C(1,s6) - 2 Y(1,s4) + 2 X(s4,s6,1) >= -0
 weight2(1,s6,s8): - C(1,s8) - 2 Y(1,s6) + 2 X(s6,s8,1) >= -0
 weight2(1,s8,h7): - C(1,h7) - 2 Y(1,s8) + 2 X(s8,h7,1) >= -0
 weight2(2,s2,s3): - C(2,s3) - 2 Y(2,s2) + 2 X(s2,s3,2) >= -0
 weight2(2,s3,h3): - C(2,h3) - 2 Y(2,s3) + 2 X(s3,h3,2) >= -0
 weight2(3,s3,s4): - C(3,s4) - 2 Y(3,s3) + 2 X(s3,s4,3) >= -0
 weight2(3,s4,s6): - C(3,s6) - 2 Y(3,s4) + 2 X(s4,s6,3) >= -0
 weight2(3,s6,h5): - C(3,h5) - 2 Y(3,s6) + 2 X(s6,h5,3) >= -0
 weight2(4,s5,s4): - C(4,s4) - 2 Y(4,s5) + 2 X(s5,s4,4) >= -0
 weight2(4,s4,s2): - C(4,s2) - 2 Y(4,s4) + 2 X(s4,s2,4) >= -0
 weight2(4,s2,h2): - C(4,h2) - 2 Y(4,s2) + 2 X(s2,h2,4) >= -0
 weight2(5,s6,s4): - C(5,s4) - 2 Y(5,s6) + 2 X(s6,s4,5) >= -0
 weight2(5,s4,s2): - C(5,s2) - 2 Y(5,s4) + 2 X(s4,s2,5) >= -0
 weight2(5,s2,s1): - C(5,s1) - 2 Y(5,s2) + 2 X(s2,s1,5) >= -0
 weight2(5,s1,h1): - C(5,h1) - 2 Y(5,s1) + 2 X(s1,h1,5) >= -0
 weight2(6,s7,s4): - C(6,s4) - 2 Y(6,s7) + 2 X(s7,s4,6) >= -0
 weight2(6,s4,s3): - C(6,s3) - 2 Y(6,s4) + 2 X(s4,s3,6) >= -0
 weight2(6,s3,h3): - C(6,h3) - 2 Y(6,s3) + 2 X(s3,h3,6) >= -0
 weight2(7,s8,s6): - C(7,s6) - 2 Y(7,s8) + 2 X(s8,s6,7) >= -0
 weight2(7,s6,s4): - C(7,s4) - 2 Y(7,s6) + 2 X(s6,s4,7) >= -0
 weight2(7,s4,s2): - C(7,s2) - 2 Y(7,s4) + 2 X(s4,s2,7) >= -0
 weight2(7,s2,s1): - C(7,s1) - 2 Y(7,s2) + 2 X(s2,s1,7) >= -0
 weight2(7,s1,h1): - C(7,h1) - 2 Y(7,s1) + 2 X(s1,h1,7) >= -0
 weight2(8,s3,s2): - C(8,s2) - 2 Y(8,s3) + 2 X(s3,s2,8) >= -0
 weight2(8,s2,s1): - C(8,s1) - 2 Y(8,s2) + 2 X(s2,s1,8) >= -0
 weight2(8,s1,h1): - C(8,h1) - 2 Y(8,s1) + 2 X(s1,h1,8) >= -0
 weight2(9,s5,s4): - C(9,s4) - 2 Y(9,s5) + 2 X(s5,s4,9) >= -0
 weight2(9,s4,s6): - C(9,s6) - 2 Y(9,s4) + 2 X(s4,s6,9) >= -0
 weight2(9,s6,h5): - C(9,h5) - 2 Y(9,s6) + 2 X(s6,h5,9) >= -0
 weight2(10,s2,s4): - C(10,s4) - 2 Y(10,s2) + 2 X(s2,s4,10) >= -0
 weight2(10,s4,s6): - C(10,s6) - 2 Y(10,s4) + 2 X(s4,s6,10) >= -0
 weight2(10,s6,s8): - C(10,s8) - 2 Y(10,s6) + 2 X(s6,s8,10) >= -0
 weight2(10,s8,h7): - C(10,h7) - 2 Y(10,s8) + 2 X(s8,h7,10) >= -0
 weight2(11,s8,s6): - C(11,s6) - 2 Y(11,s8) + 2 X(s8,s6,11) >= -0
 weight2(11,s6,s4): - C(11,s4) - 2 Y(11,s6) + 2 X(s6,s4,11) >= -0
 weight2(11,s4,s5): - C(11,s5) - 2 Y(11,s4) + 2 X(s4,s5,11) >= -0
 weight2(11,s5,h4): - C(11,h4) - 2 Y(11,s5) + 2 X(s5,h4,11) >= -0
 weight2(12,s6,s4): - C(12,s4) - 2 Y(12,s6) + 2 X(s6,s4,12) >= -0
 weight2(12,s4,s7): - C(12,s7) - 2 Y(12,s4) + 2 X(s4,s7,12) >= -0
 weight2(12,s7,h6): - C(12,h6) - 2 Y(12,s7) + 2 X(s7,h6,12) >= -0
 bindWeight1(1,s1,s2): - C(1,s1) + C(1,s2) - 2 Y(1,s1) + 2 X(s1,s2,1)
 <= 3
 bindWeight1(1,s2,s4): - C(1,s2) + C(1,s4) - 2 Y(1,s2) + 2 X(s2,s4,1)
 <= 3
 bindWeight1(1,s4,s6): - C(1,s4) + C(1,s6) - 2 Y(1,s4) + 2 X(s4,s6,1)
 <= 3
 bindWeight1(1,s6,s8): - C(1,s6) + C(1,s8) - 2 Y(1,s6) + 2 X(s6,s8,1)
 <= 3
 bindWeight1(1,s8,h7): - C(1,s8) + C(1,h7) - 2 Y(1,s8) + 2 X(s8,h7,1)
 <= 3
 bindWeight1(2,s2,s3): - C(2,s2) + C(2,s3) - 2 Y(2,s2) + 2 X(s2,s3,2)
 <= 3
 bindWeight1(2,s3,h3): - C(2,s3) + C(2,h3) - 2 Y(2,s3) + 2 X(s3,h3,2)
 <= 3
 bindWeight1(3,s3,s4): - C(3,s3) + C(3,s4) - 2 Y(3,s3) + 2 X(s3,s4,3)
 <= 3
 bindWeight1(3,s4,s6): - C(3,s4) + C(3,s6) - 2 Y(3,s4) + 2 X(s4,s6,3)
 <= 3
 bindWeight1(3,s6,h5): - C(3,s6) + C(3,h5) - 2 Y(3,s6) + 2 X(s6,h5,3)
 <= 3
 bindWeight1(4,s5,s4): - C(4,s5) + C(4,s4) - 2 Y(4,s5) + 2 X(s5,s4,4)
 <= 3
 bindWeight1(4,s4,s2): - C(4,s4) + C(4,s2) - 2 Y(4,s4) + 2 X(s4,s2,4)
 <= 3
 bindWeight1(4,s2,h2): - C(4,s2) + C(4,h2) - 2 Y(4,s2) + 2 X(s2,h2,4)
 <= 3
 bindWeight1(5,s6,s4): - C(5,s6) + C(5,s4) - 2 Y(5,s6) + 2 X(s6,s4,5)
 <= 3
 bindWeight1(5,s4,s2): - C(5,s4) + C(5,s2) - 2 Y(5,s4) + 2 X(s4,s2,5)
 <= 3
 bindWeight1(5,s2,s1): - C(5,s2) + C(5,s1) - 2 Y(5,s2) + 2 X(s2,s1,5)
 <= 3
 bindWeight1(5,s1,h1): - C(5,s1) + C(5,h1) - 2 Y(5,s1) + 2 X(s1,h1,5)
 <= 3
 bindWeight1(6,s7,s4): - C(6,s7) + C(6,s4) - 2 Y(6,s7) + 2 X(s7,s4,6)
 <= 3
 bindWeight1(6,s4,s3): - C(6,s4) + C(6,s3) - 2 Y(6,s4) + 2 X(s4,s3,6)
 <= 3
 bindWeight1(6,s3,h3): - C(6,s3) + C(6,h3) - 2 Y(6,s3) + 2 X(s3,h3,6)
 <= 3
 bindWeight1(7,s8,s6): - C(7,s8) + C(7,s6) - 2 Y(7,s8) + 2 X(s8,s6,7)
 <= 3
 bindWeight1(7,s6,s4): - C(7,s6) + C(7,s4) - 2 Y(7,s6) + 2 X(s6,s4,7)
 <= 3
 bindWeight1(7,s4,s2): - C(7,s4) + C(7,s2) - 2 Y(7,s4) + 2 X(s4,s2,7)
 <= 3
 bindWeight1(7,s2,s1): - C(7,s2) + C(7,s1) - 2 Y(7,s2) + 2 X(s2,s1,7)
 <= 3
 bindWeight1(7,s1,h1): - C(7,s1) + C(7,h1) - 2 Y(7,s1) + 2 X(s1,h1,7)
 <= 3
 bindWeight1(8,s3,s2): - C(8,s3) + C(8,s2) - 2 Y(8,s3) + 2 X(s3,s2,8)
 <= 3
 bindWeight1(8,s2,s1): - C(8,s2) + C(8,s1) - 2 Y(8,s2) + 2 X(s2,s1,8)
 <= 3
 bindWeight1(8,s1,h1): - C(8,s1) + C(8,h1) - 2 Y(8,s1) + 2 X(s1,h1,8)
 <= 3
 bindWeight1(9,s5,s4): - C(9,s5) + C(9,s4) - 2 Y(9,s5) + 2 X(s5,s4,9)
 <= 3
 bindWeight1(9,s4,s6): - C(9,s4) + C(9,s6) - 2 Y(9,s4) + 2 X(s4,s6,9)
 <= 3
 bindWeight1(9,s6,h5): - C(9,s6) + C(9,h5) - 2 Y(9,s6) + 2 X(s6,h5,9)
 <= 3
 bindWeight1(10,s2,s4): - C(10,s2) + C(10,s4) - 2 Y(10,s2)
 + 2 X(s2,s4,10) <= 3
 bindWeight1(10,s4,s6): - C(10,s4) + C(10,s6) - 2 Y(10,s4)
 + 2 X(s4,s6,10) <= 3
 bindWeight1(10,s6,s8): - C(10,s6) + C(10,s8) - 2 Y(10,s6)
 + 2 X(s6,s8,10) <= 3
 bindWeight1(10,s8,h7): - C(10,s8) + C(10,h7) - 2 Y(10,s8)
 + 2 X(s8,h7,10) <= 3
 bindWeight1(11,s8,s6): - C(11,s8) + C(11,s6) - 2 Y(11,s8)
 + 2 X(s8,s6,11) <= 3
 bindWeight1(11,s6,s4): - C(11,s6) + C(11,s4) - 2 Y(11,s6)
 + 2 X(s6,s4,11) <= 3
 bindWeight1(11,s4,s5): - C(11,s4) + C(11,s5) - 2 Y(11,s4)
 + 2 X(s4,s5,11) <= 3
 bindWeight1(11,s5,h4): - C(11,s5) + C(11,h4) - 2 Y(11,s5)
 + 2 X(s5,h4,11) <= 3
 bindWeight1(12,s6,s4): - C(12,s6) + C(12,s4) - 2 Y(12,s6)
 + 2 X(s6,s4,12) <= 3
 bindWeight1(12,s4,s7): - C(12,s4) + C(12,s7) - 2 Y(12,s4)
 + 2 X(s4,s7,12) <= 3
 bindWeight1(12,s7,h6): - C(12,s7) + C(12,h6) - 2 Y(12,s7)
 + 2 X(s7,h6,12) <= 3
 bindWeight2(1,s1,s2): - C(1,s1) + C(1,s2) + 2 Y(1,s1) - 2 X(s1,s2,1)
 >= -1
 bindWeight2(1,s2,s4): - C(1,s2) + C(1,s4) + 2 Y(1,s2) - 2 X(s2,s4,1)
 >= -1
 bindWeight2(1,s4,s6): - C(1,s4) + C(1,s6) + 2 Y(1,s4) - 2 X(s4,s6,1)
 >= -1
 bindWeight2(1,s6,s8): - C(1,s6) + C(1,s8) + 2 Y(1,s6) - 2 X(s6,s8,1)
 >= -1
 bindWeight2(1,s8,h7): - C(1,s8) + C(1,h7) + 2 Y(1,s8) - 2 X(s8,h7,1)
 >= -1
 bindWeight2(2,s2,s3): - C(2,s2) + C(2,s3) + 2 Y(2,s2) - 2 X(s2,s3,2)
 >= -1
 bindWeight2(2,s3,h3): - C(2,s3) + C(2,h3) + 2 Y(2,s3) - 2 X(s3,h3,2)
 >= -1
 bindWeight2(3,s3,s4): - C(3,s3) + C(3,s4) + 2 Y(3,s3) - 2 X(s3,s4,3)
 >= -1
 bindWeight2(3,s4,s6): - C(3,s4) + C(3,s6) + 2 Y(3,s4) - 2 X(s4,s6,3)
 >= -1
 bindWeight2(3,s6,h5): - C(3,s6) + C(3,h5) + 2 Y(3,s6) - 2 X(s6,h5,3)
 >= -1
 bindWeight2(4,s5,s4): - C(4,s5) + C(4,s4) + 2 Y(4,s5) - 2 X(s5,s4,4)
 >= -1
 bindWeight2(4,s4,s2): - C(4,s4) + C(4,s2) + 2 Y(4,s4) - 2 X(s4,s2,4)
 >= -1
 bindWeight2(4,s2,h2): - C(4,s2) + C(4,h2) + 2 Y(4,s2) - 2 X(s2,h2,4)
 >= -1
 bindWeight2(5,s6,s4): - C(5,s6) + C(5,s4) + 2 Y(5,s6) - 2 X(s6,s4,5)
 >= -1
 bindWeight2(5,s4,s2): - C(5,s4) + C(5,s2) + 2 Y(5,s4) - 2 X(s4,s2,5)
 >= -1
 bindWeight2(5,s2,s1): - C(5,s2) + C(5,s1) + 2 Y(5,s2) - 2 X(s2,s1,5)
 >= -1
 bindWeight2(5,s1,h1): - C(5,s1) + C(5,h1) + 2 Y(5,s1) - 2 X(s1,h1,5)
 >= -1
 bindWeight2(6,s7,s4): - C(6,s7) + C(6,s4) + 2 Y(6,s7) - 2 X(s7,s4,6)
 >= -1
 bindWeight2(6,s4,s3): - C(6,s4) + C(6,s3) + 2 Y(6,s4) - 2 X(s4,s3,6)
 >= -1
 bindWeight2(6,s3,h3): - C(6,s3) + C(6,h3) + 2 Y(6,s3) - 2 X(s3,h3,6)
 >= -1
 bindWeight2(7,s8,s6): - C(7,s8) + C(7,s6) + 2 Y(7,s8) - 2 X(s8,s6,7)
 >= -1
 bindWeight2(7,s6,s4): - C(7,s6) + C(7,s4) + 2 Y(7,s6) - 2 X(s6,s4,7)
 >= -1
 bindWeight2(7,s4,s2): - C(7,s4) + C(7,s2) + 2 Y(7,s4) - 2 X(s4,s2,7)
 >= -1
 bindWeight2(7,s2,s1): - C(7,s2) + C(7,s1) + 2 Y(7,s2) - 2 X(s2,s1,7)
 >= -1
 bindWeight2(7,s1,h1): - C(7,s1) + C(7,h1) + 2 Y(7,s1) - 2 X(s1,h1,7)
 >= -1
 bindWeight2(8,s3,s2): - C(8,s3) + C(8,s2) + 2 Y(8,s3) - 2 X(s3,s2,8)
 >= -1
 bindWeight2(8,s2,s1): - C(8,s2) + C(8,s1) + 2 Y(8,s2) - 2 X(s2,s1,8)
 >= -1
 bindWeight2(8,s1,h1): - C(8,s1) + C(8,h1) + 2 Y(8,s1) - 2 X(s1,h1,8)
 >= -1
 bindWeight2(9,s5,s4): - C(9,s5) + C(9,s4) + 2 Y(9,s5) - 2 X(s5,s4,9)
 >= -1
 bindWeight2(9,s4,s6): - C(9,s4) + C(9,s6) + 2 Y(9,s4) - 2 X(s4,s6,9)
 >= -1
 bindWeight2(9,s6,h5): - C(9,s6) + C(9,h5) + 2 Y(9,s6) - 2 X(s6,h5,9)
 >= -1
 bindWeight2(10,s2,s4): - C(10,s2) + C(10,s4) + 2 Y(10,s2)
 - 2 X(s2,s4,10) >= -1
 bindWeight2(10,s4,s6): - C(10,s4) + C(10,s6) + 2 Y(10,s4)
 - 2 X(s4,s6,10) >= -1
 bindWeight2(10,s6,s8): - C(10,s6) + C(10,s8) + 2 Y(10,s6)
 - 2 X(s6,s8,10) >= -1
 bindWeight2(10,s8,h7): - C(10,s8) + C(10,h7) + 2 Y(10,s8)
 - 2 X(s8,h7,10) >= -1
 bindWeight2(11,s8,s6): - C(11,s8) + C(11,s6) + 2 Y(11,s8)
 - 2 X(s8,s6,11) >= -1
 bindWeight2(11,s6,s4): - C(11,s6) + C(11,s4) + 2 Y(11,s6)
 - 2 X(s6,s4,11) >= -1
 bindWeight2(11,s4,s5): - C(11,s4) + C(11,s5) + 2 Y(11,s4)
 - 2 X(s4,s5,11) >= -1
 bindWeight2(11,s5,h4): - C(11,s5) + C(11,h4) + 2 Y(11,s5)
 - 2 X(s5,h4,11) >= -1
 bindWeight2(12,s6,s4): - C(12,s6) + C(12,s4) + 2 Y(12,s6)
 - 2 X(s6,s4,12) >= -1
 bindWeight2(12,s4,s7): - C(12,s4) + C(12,s7) + 2 Y(12,s4)
 - 2 X(s4,s7,12) >= -1
 bindWeight2(12,s7,h6): - C(12,s7) + C(12,h6) + 2 Y(12,s7)
 - 2 X(s7,h6,12) >= -1
 dispatchLast(1,s8,h7): + Y(1,s8) - X(s8,h7,1) >= -0
 dispatchLast(2,s3,h3): + Y(2,s3) - X(s3,h3,2) >= -0
 dispatchLast(3,s6,h5): + Y(3,s6) - X(s6,h5,3) >= -0
 dispatchLast(4,s2,h2): + Y(4,s2) - X(s2,h2,4) >= -0
 dispatchLast(5,s1,h1): + Y(5,s1) - X(s1,h1,5) >= -0
 dispatchLast(6,s3,h3): + Y(6,s3) - X(s3,h3,6) >= -0
 dispatchLast(7,s1,h1): + Y(7,s1) - X(s1,h1,7) >= -0
 dispatchLast(8,s1,h1): + Y(8,s1) - X(s1,h1,8) >= -0
 dispatchLast(9,s6,h5): + Y(9,s6) - X(s6,h5,9) >= -0
 dispatchLast(10,s8,h7): + Y(10,s8) - X(s8,h7,10) >= -0
 dispatchLast(11,s5,h4): + Y(11,s5) - X(s5,h4,11) >= -0
 dispatchLast(12,s7,h6): + Y(12,s7) - X(s7,h6,12) >= -0

Bounds
 0 <= Y(1,h1) <= 1
 0 <= Y(1,h2) <= 1
 0 <= Y(1,h3) <= 1
 0 <= Y(1,h4) <= 1
 0 <= Y(1,h5) <= 1
 0 <= Y(1,h6) <= 1
 0 <= Y(1,h7) <= 1
 0 <= Y(1,s1) <= 1
 0 <= Y(1,s2) <= 1
 0 <= Y(1,s3) <= 1
 0 <= Y(1,s4) <= 1
 0 <= Y(1,s5) <= 1
 0 <= Y(1,s6) <= 1
 0 <= Y(1,s7) <= 1
 0 <= Y(1,s8) <= 1
 0 <= Y(2,h1) <= 1
 0 <= Y(2,h2) <= 1
 0 <= Y(2,h3) <= 1
 0 <= Y(2,h4) <= 1
 0 <= Y(2,h5) <= 1
 0 <= Y(2,h6) <= 1
 0 <= Y(2,h7) <= 1
 0 <= Y(2,s1) <= 1
 0 <= Y(2,s2) <= 1
 0 <= Y(2,s3) <= 1
 0 <= Y(2,s4) <= 1
 0 <= Y(2,s5) <= 1
 0 <= Y(2,s6) <= 1
 0 <= Y(2,s7) <= 1
 0 <= Y(2,s8) <= 1
 0 <= Y(3,h1) <= 1
 0 <= Y(3,h2) <= 1
 0 <= Y(3,h3) <= 1
 0 <= Y(3,h4) <= 1
 0 <= Y(3,h5) <= 1
 0 <= Y(3,h6) <= 1
 0 <= Y(3,h7) <= 1
 0 <= Y(3,s1) <= 1
 0 <= Y(3,s2) <= 1
 0 <= Y(3,s3) <= 1
 0 <= Y(3,s4) <= 1
 0 <= Y(3,s5) <= 1
 0 <= Y(3,s6) <= 1
 0 <= Y(3,s7) <= 1
 0 <= Y(3,s8) <= 1
 0 <= Y(4,h1) <= 1
 0 <= Y(4,h2) <= 1
 0 <= Y(4,h3) <= 1
 0 <= Y(4,h4) <= 1
 0 <= Y(4,h5) <= 1
 0 <= Y(4,h6) <= 1
 0 <= Y(4,h7) <= 1
 0 <= Y(4,s1) <= 1
 0 <= Y(4,s2) <= 1
 0 <= Y(4,s3) <= 1
 0 <= Y(4,s4) <= 1
 0 <= Y(4,s5) <= 1
 0 <= Y(4,s6) <= 1
 0 <= Y(4,s7) <= 1
 0 <= Y(4,s8) <= 1
 0 <= Y(5,h1) <= 1
 0 <= Y(5,h2) <= 1
 0 <= Y(5,h3) <= 1
 0 <= Y(5,h4) <= 1
 0 <= Y(5,h5) <= 1
 0 <= Y(5,h6) <= 1
 0 <= Y(5,h7) <= 1
 0 <= Y(5,s1) <= 1
 0 <= Y(5,s2) <= 1
 0 <= Y(5,s3) <= 1
 0 <= Y(5,s4) <= 1
 0 <= Y(5,s5) <= 1
 0 <= Y(5,s6) <= 1
 0 <= Y(5,s7) <= 1
 0 <= Y(5,s8) <= 1
 0 <= Y(6,h1) <= 1
 0 <= Y(6,h2) <= 1
 0 <= Y(6,h3) <= 1
 0 <= Y(6,h4) <= 1
 0 <= Y(6,h5) <= 1
 0 <= Y(6,h6) <= 1
 0 <= Y(6,h7) <= 1
 0 <= Y(6,s1) <= 1
 0 <= Y(6,s2) <= 1
 0 <= Y(6,s3) <= 1
 0 <= Y(6,s4) <= 1
 0 <= Y(6,s5) <= 1
 0 <= Y(6,s6) <= 1
 0 <= Y(6,s7) <= 1
 0 <= Y(6,s8) <= 1
 0 <= Y(7,h1) <= 1
 0 <= Y(7,h2) <= 1
 0 <= Y(7,h3) <= 1
 0 <= Y(7,h4) <= 1
 0 <= Y(7,h5) <= 1
 0 <= Y(7,h6) <= 1
 0 <= Y(7,h7) <= 1
 0 <= Y(7,s1) <= 1
 0 <= Y(7,s2) <= 1
 0 <= Y(7,s3) <= 1
 0 <= Y(7,s4) <= 1
 0 <= Y(7,s5) <= 1
 0 <= Y(7,s6) <= 1
 0 <= Y(7,s7) <= 1
 0 <= Y(7,s8) <= 1
 0 <= Y(8,h1) <= 1
 0 <= Y(8,h2) <= 1
 0 <= Y(8,h3) <= 1
 0 <= Y(8,h4) <= 1
 0 <= Y(8,h5) <= 1
 0 <= Y(8,h6) <= 1
 0 <= Y(8,h7) <= 1
 0 <= Y(8,s1) <= 1
 0 <= Y(8,s2) <= 1
 0 <= Y(8,s3) <= 1
 0 <= Y(8,s4) <= 1
 0 <= Y(8,s5) <= 1
 0 <= Y(8,s6) <= 1
 0 <= Y(8,s7) <= 1
 0 <= Y(8,s8) <= 1
 0 <= Y(9,h1) <= 1
 0 <= Y(9,h2) <= 1
 0 <= Y(9,h3) <= 1
 0 <= Y(9,h4) <= 1
 0 <= Y(9,h5) <= 1
 0 <= Y(9,h6) <= 1
 0 <= Y(9,h7) <= 1
 0 <= Y(9,s1) <= 1
 0 <= Y(9,s2) <= 1
 0 <= Y(9,s3) <= 1
 0 <= Y(9,s4) <= 1
 0 <= Y(9,s5) <= 1
 0 <= Y(9,s6) <= 1
 0 <= Y(9,s7) <= 1
 0 <= Y(9,s8) <= 1
 0 <= Y(10,h1) <= 1
 0 <= Y(10,h2) <= 1
 0 <= Y(10,h3) <= 1
 0 <= Y(10,h4) <= 1
 0 <= Y(10,h5) <= 1
 0 <= Y(10,h6) <= 1
 0 <= Y(10,h7) <= 1
 0 <= Y(10,s1) <= 1
 0 <= Y(10,s2) <= 1
 0 <= Y(10,s3) <= 1
 0 <= Y(10,s4) <= 1
 0 <= Y(10,s5) <= 1
 0 <= Y(10,s6) <= 1
 0 <= Y(10,s7) <= 1
 0 <= Y(10,s8) <= 1
 0 <= Y(11,h1) <= 1
 0 <= Y(11,h2) <= 1
 0 <= Y(11,h3) <= 1
 0 <= Y(11,h4) <= 1
 0 <= Y(11,h5) <= 1
 0 <= Y(11,h6) <= 1
 0 <= Y(11,h7) <= 1
 0 <= Y(11,s1) <= 1
 0 <= Y(11,s2) <= 1
 0 <= Y(11,s3) <= 1
 0 <= Y(11,s4) <= 1
 0 <= Y(11,s5) <= 1
 0 <= Y(11,s6) <= 1
 0 <= Y(11,s7) <= 1
 0 <= Y(11,s8) <= 1
 0 <= Y(12,h1) <= 1
 0 <= Y(12,h2) <= 1
 0 <= Y(12,h3) <= 1
 0 <= Y(12,h4) <= 1
 0 <= Y(12,h5) <= 1
 0 <= Y(12,h6) <= 1
 0 <= Y(12,h7) <= 1
 0 <= Y(12,s1) <= 1
 0 <= Y(12,s2) <= 1
 0 <= Y(12,s3) <= 1
 0 <= Y(12,s4) <= 1
 0 <= Y(12,s5) <= 1
 0 <= Y(12,s6) <= 1
 0 <= Y(12,s7) <= 1
 0 <= Y(12,s8) <= 1
 0 <= X(s1,h1,1) <= 1
 0 <= X(s1,h1,2) <= 1
 0 <= X(s1,h1,3) <= 1
 0 <= X(s1,h1,4) <= 1
 0 <= X(s1,h1,5) <= 1
 0 <= X(s1,h1,6) <= 1
 0 <= X(s1,h1,7) <= 1
 0 <= X(s1,h1,8) <= 1
 0 <= X(s1,h1,9) <= 1
 0 <= X(s1,h1,10) <= 1
 0 <= X(s1,h1,11) <= 1
 0 <= X(s1,h1,12) <= 1
 0 <= X(s1,s2,1) <= 1
 0 <= X(s1,s2,2) <= 1
 0 <= X(s1,s2,3) <= 1
 0 <= X(s1,s2,4) <= 1
 0 <= X(s1,s2,5) <= 1
 0 <= X(s1,s2,6) <= 1
 0 <= X(s1,s2,7) <= 1
 0 <= X(s1,s2,8) <= 1
 0 <= X(s1,s2,9) <= 1
 0 <= X(s1,s2,10) <= 1
 0 <= X(s1,s2,11) <= 1
 0 <= X(s1,s2,12) <= 1
 0 <= X(s2,s1,1) <= 1
 0 <= X(s2,s1,2) <= 1
 0 <= X(s2,s1,3) <= 1
 0 <= X(s2,s1,4) <= 1
 0 <= X(s2,s1,5) <= 1
 0 <= X(s2,s1,6) <= 1
 0 <= X(s2,s1,7) <= 1
 0 <= X(s2,s1,8) <= 1
 0 <= X(s2,s1,9) <= 1
 0 <= X(s2,s1,10) <= 1
 0 <= X(s2,s1,11) <= 1
 0 <= X(s2,s1,12) <= 1
 0 <= X(s2,h2,1) <= 1
 0 <= X(s2,h2,2) <= 1
 0 <= X(s2,h2,3) <= 1
 0 <= X(s2,h2,4) <= 1
 0 <= X(s2,h2,5) <= 1
 0 <= X(s2,h2,6) <= 1
 0 <= X(s2,h2,7) <= 1
 0 <= X(s2,h2,8) <= 1
 0 <= X(s2,h2,9) <= 1
 0 <= X(s2,h2,10) <= 1
 0 <= X(s2,h2,11) <= 1
 0 <= X(s2,h2,12) <= 1
 0 <= X(s2,s3,1) <= 1
 0 <= X(s2,s3,2) <= 1
 0 <= X(s2,s3,3) <= 1
 0 <= X(s2,s3,4) <= 1
 0 <= X(s2,s3,5) <= 1
 0 <= X(s2,s3,6) <= 1
 0 <= X(s2,s3,7) <= 1
 0 <= X(s2,s3,8) <= 1
 0 <= X(s2,s3,9) <= 1
 0 <= X(s2,s3,10) <= 1
 0 <= X(s2,s3,11) <= 1
 0 <= X(s2,s3,12) <= 1
 0 <= X(s3,s2,1) <= 1
 0 <= X(s3,s2,2) <= 1
 0 <= X(s3,s2,3) <= 1
 0 <= X(s3,s2,4) <= 1
 0 <= X(s3,s2,5) <= 1
 0 <= X(s3,s2,6) <= 1
 0 <= X(s3,s2,7) <= 1
 0 <= X(s3,s2,8) <= 1
 0 <= X(s3,s2,9) <= 1
 0 <= X(s3,s2,10) <= 1
 0 <= X(s3,s2,11) <= 1
 0 <= X(s3,s2,12) <= 1
 0 <= X(s2,s4,1) <= 1
 0 <= X(s2,s4,2) <= 1
 0 <= X(s2,s4,3) <= 1
 0 <= X(s2,s4,4) <= 1
 0 <= X(s2,s4,5) <= 1
 0 <= X(s2,s4,6) <= 1
 0 <= X(s2,s4,7) <= 1
 0 <= X(s2,s4,8) <= 1
 0 <= X(s2,s4,9) <= 1
 0 <= X(s2,s4,10) <= 1
 0 <= X(s2,s4,11) <= 1
 0 <= X(s2,s4,12) <= 1
 0 <= X(s4,s2,1) <= 1
 0 <= X(s4,s2,2) <= 1
 0 <= X(s4,s2,3) <= 1
 0 <= X(s4,s2,4) <= 1
 0 <= X(s4,s2,5) <= 1
 0 <= X(s4,s2,6) <= 1
 0 <= X(s4,s2,7) <= 1
 0 <= X(s4,s2,8) <= 1
 0 <= X(s4,s2,9) <= 1
 0 <= X(s4,s2,10) <= 1
 0 <= X(s4,s2,11) <= 1
 0 <= X(s4,s2,12) <= 1
 0 <= X(s3,h3,1) <= 1
 0 <= X(s3,h3,2) <= 1
 0 <= X(s3,h3,3) <= 1
 0 <= X(s3,h3,4) <= 1
 0 <= X(s3,h3,5) <= 1
 0 <= X(s3,h3,6) <= 1
 0 <= X(s3,h3,7) <= 1
 0 <= X(s3,h3,8) <= 1
 0 <= X(s3,h3,9) <= 1
 0 <= X(s3,h3,10) <= 1
 0 <= X(s3,h3,11) <= 1
 0 <= X(s3,h3,12) <= 1
 0 <= X(s3,s4,1) <= 1
 0 <= X(s3,s4,2) <= 1
 0 <= X(s3,s4,3) <= 1
 0 <= X(s3,s4,4) <= 1
 0 <= X(s3,s4,5) <= 1
 0 <= X(s3,s4,6) <= 1
 0 <= X(s3,s4,7) <= 1
 0 <= X(s3,s4,8) <= 1
 0 <= X(s3,s4,9) <= 1
 0 <= X(s3,s4,10) <= 1
 0 <= X(s3,s4,11) <= 1
 0 <= X(s3,s4,12) <= 1
 0 <= X(s4,s3,1) <= 1
 0 <= X(s4,s3,2) <= 1
 0 <= X(s4,s3,3) <= 1
 0 <= X(s4,s3,4) <= 1
 0 <= X(s4,s3,5) <= 1
 0 <= X(s4,s3,6) <= 1
 0 <= X(s4,s3,7) <= 1
 0 <= X(s4,s3,8) <= 1
 0 <= X(s4,s3,9) <= 1
 0 <= X(s4,s3,10) <= 1
 0 <= X(s4,s3,11) <= 1
 0 <= X(s4,s3,12) <= 1
 0 <= X(s4,s5,1) <= 1
 0 <= X(s4,s5,2) <= 1
 0 <= X(s4,s5,3) <= 1
 0 <= X(s4,s5,4) <= 1
 0 <= X(s4,s5,5) <= 1
 0 <= X(s4,s5,6) <= 1
 0 <= X(s4,s5,7) <= 1
 0 <= X(s4,s5,8) <= 1
 0 <= X(s4,s5,9) <= 1
 0 <= X(s4,s5,10) <= 1
 0 <= X(s4,s5,11) <= 1
 0 <= X(s4,s5,12) <= 1
 0 <= X(s5,s4,1) <= 1
 0 <= X(s5,s4,2) <= 1
 0 <= X(s5,s4,3) <= 1
 0 <= X(s5,s4,4) <= 1
 0 <= X(s5,s4,5) <= 1
 0 <= X(s5,s4,6) <= 1
 0 <= X(s5,s4,7) <= 1
 0 <= X(s5,s4,8) <= 1
 0 <= X(s5,s4,9) <= 1
 0 <= X(s5,s4,10) <= 1
 0 <= X(s5,s4,11) <= 1
 0 <= X(s5,s4,12) <= 1
 0 <= X(s5,h4,1) <= 1
 0 <= X(s5,h4,2) <= 1
 0 <= X(s5,h4,3) <= 1
 0 <= X(s5,h4,4) <= 1
 0 <= X(s5,h4,5) <= 1
 0 <= X(s5,h4,6) <= 1
 0 <= X(s5,h4,7) <= 1
 0 <= X(s5,h4,8) <= 1
 0 <= X(s5,h4,9) <= 1
 0 <= X(s5,h4,10) <= 1
 0 <= X(s5,h4,11) <= 1
 0 <= X(s5,h4,12) <= 1
 0 <= X(s4,s6,1) <= 1
 0 <= X(s4,s6,2) <= 1
 0 <= X(s4,s6,3) <= 1
 0 <= X(s4,s6,4) <= 1
 0 <= X(s4,s6,5) <= 1
 0 <= X(s4,s6,6) <= 1
 0 <= X(s4,s6,7) <= 1
 0 <= X(s4,s6,8) <= 1
 0 <= X(s4,s6,9) <= 1
 0 <= X(s4,s6,10) <= 1
 0 <= X(s4,s6,11) <= 1
 0 <= X(s4,s6,12) <= 1
 0 <= X(s6,s4,1) <= 1
 0 <= X(s6,s4,2) <= 1
 0 <= X(s6,s4,3) <= 1
 0 <= X(s6,s4,4) <= 1
 0 <= X(s6,s4,5) <= 1
 0 <= X(s6,s4,6) <= 1
 0 <= X(s6,s4,7) <= 1
 0 <= X(s6,s4,8) <= 1
 0 <= X(s6,s4,9) <= 1
 0 <= X(s6,s4,10) <= 1
 0 <= X(s6,s4,11) <= 1
 0 <= X(s6,s4,12) <= 1
 0 <= X(s6,h5,1) <= 1
 0 <= X(s6,h5,2) <= 1
 0 <= X(s6,h5,3) <= 1
 0 <= X(s6,h5,4) <= 1
 0 <= X(s6,h5,5) <= 1
 0 <= X(s6,h5,6) <= 1
 0 <= X(s6,h5,7) <= 1
 0 <= X(s6,h5,8) <= 1
 0 <= X(s6,h5,9) <= 1
 0 <= X(s6,h5,10) <= 1
 0 <= X(s6,h5,11) <= 1
 0 <= X(s6,h5,12) <= 1
 0 <= X(s6,s8,1) <= 1
 0 <= X(s6,s8,2) <= 1
 0 <= X(s6,s8,3) <= 1
 0 <= X(s6,s8,4) <= 1
 0 <= X(s6,s8,5) <= 1
 0 <= X(s6,s8,6) <= 1
 0 <= X(s6,s8,7) <= 1
 0 <= X(s6,s8,8) <= 1
 0 <= X(s6,s8,9) <= 1
 0 <= X(s6,s8,10) <= 1
 0 <= X(s6,s8,11) <= 1
 0 <= X(s6,s8,12) <= 1
 0 <= X(s8,s6,1) <= 1
 0 <= X(s8,s6,2) <= 1
 0 <= X(s8,s6,3) <= 1
 0 <= X(s8,s6,4) <= 1
 0 <= X(s8,s6,5) <= 1
 0 <= X(s8,s6,6) <= 1
 0 <= X(s8,s6,7) <= 1
 0 <= X(s8,s6,8) <= 1
 0 <= X(s8,s6,9) <= 1
 0 <= X(s8,s6,10) <= 1
 0 <= X(s8,s6,11) <= 1
 0 <= X(s8,s6,12) <= 1
 0 <= X(s8,h7,1) <= 1
 0 <= X(s8,h7,2) <= 1
 0 <= X(s8,h7,3) <= 1
 0 <= X(s8,h7,4) <= 1
 0 <= X(s8,h7,5) <= 1
 0 <= X(s8,h7,6) <= 1
 0 <= X(s8,h7,7) <= 1
 0 <= X(s8,h7,8) <= 1
 0 <= X(s8,h7,9) <= 1
 0 <= X(s8,h7,10) <= 1
 0 <= X(s8,h7,11) <= 1
 0 <= X(s8,h7,12) <= 1
 0 <= X(s4,s7,1) <= 1
 0 <= X(s4,s7,2) <= 1
 0 <= X(s4,s7,3) <= 1
 0 <= X(s4,s7,4) <= 1
 0 <= X(s4,s7,5) <= 1
 0 <= X(s4,s7,6) <= 1
 0 <= X(s4,s7,7) <= 1
 0 <= X(s4,s7,8) <= 1
 0 <= X(s4,s7,9) <= 1
 0 <= X(s4,s7,10) <= 1
 0 <= X(s4,s7,11) <= 1
 0 <= X(s4,s7,12) <= 1
 0 <= X(s7,s4,1) <= 1
 0 <= X(s7,s4,2) <= 1
 0 <= X(s7,s4,3) <= 1
 0 <= X(s7,s4,4) <= 1
 0 <= X(s7,s4,5) <= 1
 0 <= X(s7,s4,6) <= 1
 0 <= X(s7,s4,7) <= 1
 0 <= X(s7,s4,8) <= 1
 0 <= X(s7,s4,9) <= 1
 0 <= X(s7,s4,10) <= 1
 0 <= X(s7,s4,11) <= 1
 0 <= X(s7,s4,12) <= 1
 0 <= X(s7,h6,1) <= 1
 0 <= X(s7,h6,2) <= 1
 0 <= X(s7,h6,3) <= 1
 0 <= X(s7,h6,4) <= 1
 0 <= X(s7,h6,5) <= 1
 0 <= X(s7,h6,6) <= 1
 0 <= X(s7,h6,7) <= 1
 0 <= X(s7,h6,8) <= 1
 0 <= X(s7,h6,9) <= 1
 0 <= X(s7,h6,10) <= 1
 0 <= X(s7,h6,11) <= 1
 0 <= X(s7,h6,12) <= 1

Generals
 Y(1,h1)
 Y(1,h2)
 Y(1,h3)
 Y(1,h4)
 Y(1,h5)
 Y(1,h6)
 Y(1,h7)
 Y(1,s1)
 Y(1,s2)
 Y(1,s3)
 Y(1,s4)
 Y(1,s5)
 Y(1,s6)
 Y(1,s7)
 Y(1,s8)
 Y(2,h1)
 Y(2,h2)
 Y(2,h3)
 Y(2,h4)
 Y(2,h5)
 Y(2,h6)
 Y(2,h7)
 Y(2,s1)
 Y(2,s2)
 Y(2,s3)
 Y(2,s4)
 Y(2,s5)
 Y(2,s6)
 Y(2,s7)
 Y(2,s8)
 Y(3,h1)
 Y(3,h2)
 Y(3,h3)
 Y(3,h4)
 Y(3,h5)
 Y(3,h6)
 Y(3,h7)
 Y(3,s1)
 Y(3,s2)
 Y(3,s3)
 Y(3,s4)
 Y(3,s5)
 Y(3,s6)
 Y(3,s7)
 Y(3,s8)
 Y(4,h1)
 Y(4,h2)
 Y(4,h3)
 Y(4,h4)
 Y(4,h5)
 Y(4,h6)
 Y(4,h7)
 Y(4,s1)
 Y(4,s2)
 Y(4,s3)
 Y(4,s4)
 Y(4,s5)
 Y(4,s6)
 Y(4,s7)
 Y(4,s8)
 Y(5,h1)
 Y(5,h2)
 Y(5,h3)
 Y(5,h4)
 Y(5,h5)
 Y(5,h6)
 Y(5,h7)
 Y(5,s1)
 Y(5,s2)
 Y(5,s3)
 Y(5,s4)
 Y(5,s5)
 Y(5,s6)
 Y(5,s7)
 Y(5,s8)
 Y(6,h1)
 Y(6,h2)
 Y(6,h3)
 Y(6,h4)
 Y(6,h5)
 Y(6,h6)
 Y(6,h7)
 Y(6,s1)
 Y(6,s2)
 Y(6,s3)
 Y(6,s4)
 Y(6,s5)
 Y(6,s6)
 Y(6,s7)
 Y(6,s8)
 Y(7,h1)
 Y(7,h2)
 Y(7,h3)
 Y(7,h4)
 Y(7,h5)
 Y(7,h6)
 Y(7,h7)
 Y(7,s1)
 Y(7,s2)
 Y(7,s3)
 Y(7,s4)
 Y(7,s5)
 Y(7,s6)
 Y(7,s7)
 Y(7,s8)
 Y(8,h1)
 Y(8,h2)
 Y(8,h3)
 Y(8,h4)
 Y(8,h5)
 Y(8,h6)
 Y(8,h7)
 Y(8,s1)
 Y(8,s2)
 Y(8,s3)
 Y(8,s4)
 Y(8,s5)
 Y(8,s6)
 Y(8,s7)
 Y(8,s8)
 Y(9,h1)
 Y(9,h2)
 Y(9,h3)
 Y(9,h4)
 Y(9,h5)
 Y(9,h6)
 Y(9,h7)
 Y(9,s1)
 Y(9,s2)
 Y(9,s3)
 Y(9,s4)
 Y(9,s5)
 Y(9,s6)
 Y(9,s7)
 Y(9,s8)
 Y(10,h1)
 Y(10,h2)
 Y(10,h3)
 Y(10,h4)
 Y(10,h5)
 Y(10,h6)
 Y(10,h7)
 Y(10,s1)
 Y(10,s2)
 Y(10,s3)
 Y(10,s4)
 Y(10,s5)
 Y(10,s6)
 Y(10,s7)
 Y(10,s8)
 Y(11,h1)
 Y(11,h2)
 Y(11,h3)
 Y(11,h4)
 Y(11,h5)
 Y(11,h6)
 Y(11,h7)
 Y(11,s1)
 Y(11,s2)
 Y(11,s3)
 Y(11,s4)
 Y(11,s5)
 Y(11,s6)
 Y(11,s7)
 Y(11,s8)
 Y(12,h1)
 Y(12,h2)
 Y(12,h3)
 Y(12,h4)
 Y(12,h5)
 Y(12,h6)
 Y(12,h7)
 Y(12,s1)
 Y(12,s2)
 Y(12,s3)
 Y(12,s4)
 Y(12,s5)
 Y(12,s6)
 Y(12,s7)
 Y(12,s8)
 X(s1,h1,1)
 X(s1,h1,2)
 X(s1,h1,3)
 X(s1,h1,4)
 X(s1,h1,5)
 X(s1,h1,6)
 X(s1,h1,7)
 X(s1,h1,8)
 X(s1,h1,9)
 X(s1,h1,10)
 X(s1,h1,11)
 X(s1,h1,12)
 X(s1,s2,1)
 X(s1,s2,2)
 X(s1,s2,3)
 X(s1,s2,4)
 X(s1,s2,5)
 X(s1,s2,6)
 X(s1,s2,7)
 X(s1,s2,8)
 X(s1,s2,9)
 X(s1,s2,10)
 X(s1,s2,11)
 X(s1,s2,12)
 X(s2,s1,1)
 X(s2,s1,2)
 X(s2,s1,3)
 X(s2,s1,4)
 X(s2,s1,5)
 X(s2,s1,6)
 X(s2,s1,7)
 X(s2,s1,8)
 X(s2,s1,9)
 X(s2,s1,10)
 X(s2,s1,11)
 X(s2,s1,12)
 X(s2,h2,1)
 X(s2,h2,2)
 X(s2,h2,3)
 X(s2,h2,4)
 X(s2,h2,5)
 X(s2,h2,6)
 X(s2,h2,7)
 X(s2,h2,8)
 X(s2,h2,9)
 X(s2,h2,10)
 X(s2,h2,11)
 X(s2,h2,12)
 X(s2,s3,1)
 X(s2,s3,2)
 X(s2,s3,3)
 X(s2,s3,4)
 X(s2,s3,5)
 X(s2,s3,6)
 X(s2,s3,7)
 X(s2,s3,8)
 X(s2,s3,9)
 X(s2,s3,10)
 X(s2,s3,11)
 X(s2,s3,12)
 X(s3,s2,1)
 X(s3,s2,2)
 X(s3,s2,3)
 X(s3,s2,4)
 X(s3,s2,5)
 X(s3,s2,6)
 X(s3,s2,7)
 X(s3,s2,8)
 X(s3,s2,9)
 X(s3,s2,10)
 X(s3,s2,11)
 X(s3,s2,12)
 X(s2,s4,1)
 X(s2,s4,2)
 X(s2,s4,3)
 X(s2,s4,4)
 X(s2,s4,5)
 X(s2,s4,6)
 X(s2,s4,7)
 X(s2,s4,8)
 X(s2,s4,9)
 X(s2,s4,10)
 X(s2,s4,11)
 X(s2,s4,12)
 X(s4,s2,1)
 X(s4,s2,2)
 X(s4,s2,3)
 X(s4,s2,4)
 X(s4,s2,5)
 X(s4,s2,6)
 X(s4,s2,7)
 X(s4,s2,8)
 X(s4,s2,9)
 X(s4,s2,10)
 X(s4,s2,11)
 X(s4,s2,12)
 X(s3,h3,1)
 X(s3,h3,2)
 X(s3,h3,3)
 X(s3,h3,4)
 X(s3,h3,5)
 X(s3,h3,6)
 X(s3,h3,7)
 X(s3,h3,8)
 X(s3,h3,9)
 X(s3,h3,10)
 X(s3,h3,11)
 X(s3,h3,12)
 X(s3,s4,1)
 X(s3,s4,2)
 X(s3,s4,3)
 X(s3,s4,4)
 X(s3,s4,5)
 X(s3,s4,6)
 X(s3,s4,7)
 X(s3,s4,8)
 X(s3,s4,9)
 X(s3,s4,10)
 X(s3,s4,11)
 X(s3,s4,12)
 X(s4,s3,1)
 X(s4,s3,2)
 X(s4,s3,3)
 X(s4,s3,4)
 X(s4,s3,5)
 X(s4,s3,6)
 X(s4,s3,7)
 X(s4,s3,8)
 X(s4,s3,9)
 X(s4,s3,10)
 X(s4,s3,11)
 X(s4,s3,12)
 X(s4,s5,1)
 X(s4,s5,2)
 X(s4,s5,3)
 X(s4,s5,4)
 X(s4,s5,5)
 X(s4,s5,6)
 X(s4,s5,7)
 X(s4,s5,8)
 X(s4,s5,9)
 X(s4,s5,10)
 X(s4,s5,11)
 X(s4,s5,12)
 X(s5,s4,1)
 X(s5,s4,2)
 X(s5,s4,3)
 X(s5,s4,4)
 X(s5,s4,5)
 X(s5,s4,6)
 X(s5,s4,7)
 X(s5,s4,8)
 X(s5,s4,9)
 X(s5,s4,10)
 X(s5,s4,11)
 X(s5,s4,12)
 X(s5,h4,1)
 X(s5,h4,2)
 X(s5,h4,3)
 X(s5,h4,4)
 X(s5,h4,5)
 X(s5,h4,6)
 X(s5,h4,7)
 X(s5,h4,8)
 X(s5,h4,9)
 X(s5,h4,10)
 X(s5,h4,11)
 X(s5,h4,12)
 X(s4,s6,1)
 X(s4,s6,2)
 X(s4,s6,3)
 X(s4,s6,4)
 X(s4,s6,5)
 X(s4,s6,6)
 X(s4,s6,7)
 X(s4,s6,8)
 X(s4,s6,9)
 X(s4,s6,10)
 X(s4,s6,11)
 X(s4,s6,12)
 X(s6,s4,1)
 X(s6,s4,2)
 X(s6,s4,3)
 X(s6,s4,4)
 X(s6,s4,5)
 X(s6,s4,6)
 X(s6,s4,7)
 X(s6,s4,8)
 X(s6,s4,9)
 X(s6,s4,10)
 X(s6,s4,11)
 X(s6,s4,12)
 X(s6,h5,1)
 X(s6,h5,2)
 X(s6,h5,3)
 X(s6,h5,4)
 X(s6,h5,5)
 X(s6,h5,6)
 X(s6,h5,7)
 X(s6,h5,8)
 X(s6,h5,9)
 X(s6,h5,10)
 X(s6,h5,11)
 X(s6,h5,12)
 X(s6,s8,1)
 X(s6,s8,2)
 X(s6,s8,3)
 X(s6,s8,4)
 X(s6,s8,5)
 X(s6,s8,6)
 X(s6,s8,7)
 X(s6,s8,8)
 X(s6,s8,9)
 X(s6,s8,10)
 X(s6,s8,11)
 X(s6,s8,12)
 X(s8,s6,1)
 X(s8,s6,2)
 X(s8,s6,3)
 X(s8,s6,4)
 X(s8,s6,5)
 X(s8,s6,6)
 X(s8,s6,7)
 X(s8,s6,8)
 X(s8,s6,9)
 X(s8,s6,10)
 X(s8,s6,11)
 X(s8,s6,12)
 X(s8,h7,1)
 X(s8,h7,2)
 X(s8,h7,3)
 X(s8,h7,4)
 X(s8,h7,5)
 X(s8,h7,6)
 X(s8,h7,7)
 X(s8,h7,8)
 X(s8,h7,9)
 X(s8,h7,10)
 X(s8,h7,11)
 X(s8,h7,12)
 X(s4,s7,1)
 X(s4,s7,2)
 X(s4,s7,3)
 X(s4,s7,4)
 X(s4,s7,5)
 X(s4,s7,6)
 X(s4,s7,7)
 X(s4,s7,8)
 X(s4,s7,9)
 X(s4,s7,10)
 X(s4,s7,11)
 X(s4,s7,12)
 X(s7,s4,1)
 X(s7,s4,2)
 X(s7,s4,3)
 X(s7,s4,4)
 X(s7,s4,5)
 X(s7,s4,6)
 X(s7,s4,7)
 X(s7,s4,8)
 X(s7,s4,9)
 X(s7,s4,10)
 X(s7,s4,11)
 X(s7,s4,12)
 X(s7,h6,1)
 X(s7,h6,2)
 X(s7,h6,3)
 X(s7,h6,4)
 X(s7,h6,5)
 X(s7,h6,6)
 X(s7,h6,7)
 X(s7,h6,8)
 X(s7,h6,9)
 X(s7,h6,10)
 X(s7,h6,11)
 X(s7,h6,12)

End
