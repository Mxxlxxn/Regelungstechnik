clear

time = linspace(0, 3 * 10^-3, 10^3);  % Hz

function f1 = myfun(x1, x2, x3, x4)
    f1 = x1 * sin(2 * pi * x2 * x3 - x4);
end

f1 = myfun(2, 2* 10^3, time, 0);
f2 = myfun(4, 6 * 10^3, time, -pi./4);
f3 = f1 .* f1;


layout = tiledlayout(4,1);
nexttile
plot(time, f1, "DisplayName", "x1(t)")
xlabel("t in s")
title("x1(t)")
nexttile
plot(time, f2, "DisplayName", "x2(t)")
xlabel("t in s")
title("x2(t)")
nexttile
plot(time, f3, "DisplayName", "x2(t)")
xlabel("t in s")
title('x1(t) * x1(t)')
nexttile
plot(f1, f2, "DisplayName", "Liss Figur")
xlabel("x1(t)")
ylabel("x2(t)")
title("Liss Figur")
