%Function to fit:
function DI=func(T,A,B,n)
DI=A.*(T+273).^n+B;  %Fit as T[K], remove "+273" to fit as T[C] 
end
