unset border
unset tics
unset key
set margins exp(1),exp(1),exp(1),exp(1)
set xrange [-2*pi:2*pi]
plot -cos(x) with lines linewidth (pi*exp(1)*((1+sqrt(5))/2)*(1+sqrt(2))) linetype rgbcolor "#2E5090"
