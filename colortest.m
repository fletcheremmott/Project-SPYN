brick.SetColorMode(3,2)
while 1
    color = brick.ColorCode(3);
    if color == 5
        disp('red')
    elseif color == 2 || color == 3
        disp('green/blue')
    end
end
