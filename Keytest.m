global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 0
            brick.StopAllMotors();
        case 'uparrow'
            brick.MoveMotor('A', 40);
            brick.MoveMotor('D', 40);
            
        case 'downarrow'
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            
        case 'leftarrow'
            brick.MoveMotor('A', 15);
            brick.MoveMotor('D', -15);
            
        case 'rightarrow'
            brick.MoveMotor('A', -15)
            brick.MoveMotor('D', 15);

        case 'w'
            brick.MoveMotor('C',-70)

        case 's'
            brick.MoveMotor('C',70)

        case 'q'
            break    
    end
end
CloseKeyboard();