global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        
        case 'uparrow'
            brick.MoveMotor('A', 40);
            brick.MoveMotor('D', 40);
            pause(0.5)
            brick.StopMotor('AD', 'Coast');
            
        case 'downarrow'
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(.5)
            brick.StopMotor('AD', 'Brake');
            
        case 'leftarrow'
            brick.MoveMotor('A', 15);
            brick.MoveMotor('D', -15);
            pause(0.25)
            brick.StopMotor('AD', 'Brake');
            
        case 'rightarrow'
            brick.MoveMotor('A', -15)
            brick.MoveMotor('D', 15);
            pause(0.25)
            brick.StopMotor('AD', 'Brake');

        case 'w'
            brick.MoveMotor('C',-50)
            pause(.15)
            brick.StopMotor('C', 'Brake');

        case 's'
            brick.MoveMotor('C',50)
            pause(.15)
            brick.StopMotor('C', 'Brake');

        case 'q'
            break

        case 'e'
            brick.MoveMotor('B', 30)
            pause(.15)
            brick.StopMotor('B', 'Brake');

        case 'd'
            brick.MoveMotor('B', -30)
            pause(.15)
            brick.StopMotor('B', 'Brake');
    end
end
CloseKeyboard();
