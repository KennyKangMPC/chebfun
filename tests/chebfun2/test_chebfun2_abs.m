function pass = test_chebfun2_abs( pref ) 
% Test abs. 

if ( nargin == 0) 
    pref = chebfun2pref; 
end

tol = 1000*pref.eps; 
j = 1; 


f = chebfun2(@(x,y) cos(x.*y) + 2); 
pass(j) = norm( f - abs(f) ) < tol; j = j + 1; 
pass(j) = norm( f - abs(-f) ) < tol; j = j + 1; 

f = chebfun2(@(x,y) cos(x.*y) + 2, [-3 4 -1 10]); 
pass(j) = norm( f - abs(f) ) < tol; j = j + 1; 
pass(j) = norm( f - abs(-f) ) < tol; j = j + 1; 

end