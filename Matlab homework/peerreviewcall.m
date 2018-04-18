syms func(x)
func(x) = 7*sin(x)*exp(x*-1)-1;
[root,fx,ea,iter] = falsePosition_peer1(@(x) func(x),-1,3)