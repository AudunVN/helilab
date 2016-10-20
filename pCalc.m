lhs = K_p3p2*[pc;0;ec];
rhs = p*[pc;ec];
ec = 1;
pc = 1;
[ecS,p11s,p12s,p21s,p22s] = solve(lhs == rhs, [p11, p12, p21, p22])