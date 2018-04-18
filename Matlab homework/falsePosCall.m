m = 25;
g = 9.81;
u = 0.55;
F = 150;
syms func(theta)
func(theta) = ((u*m*g)/(cos(theta)+u*sin(theta))-F)
[root,fx,ea,iter] = falsePosition_peer2(@(theta) func(theta), 0.1, 1.5)