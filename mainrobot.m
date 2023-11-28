%{
touchfront = 1
lightsensor = 4
ultrasonic = 2
leftwheel = D
rightwheeel = A
lift = C
%}
rightTurn = -58;
leftTurn = -52;
motor = -40;
threshold = 50;
distance = 0;

brick.SetColorMode(4, 2);

while 1
    
    brick.MoveMotor('A', motor);
    brick.MoveMotor('D', motor);

    touch = brick.TouchPressed(1);
    color = brick.ColorCode(4);
    distance = brick.UltrasonicDist(2);
    
    if color == 5                                         
        brick.StopMotor('AD', 'Brake');
        pause(5);
        disp('red')
        brick.MoveMotor('A', motor); 
        brick.MoveMotor('D', motor);
        pause(0.5);
    end
    
    if color == 2 || color == 3 || color == 4
        brick.StopMotor('AD', 'Brake');
        run('Keytest.m');
        disp('blue/green');
        brick.MoveMotor('A', motor); 
        brick.MoveMotor('D', motor);
        pause(2);
    end
    
    if distance > threshold            
        pause(1.5);
        brick.StopMotor('AD', 'Brake');
        brick.MoveMotor('A', rightTurn);
        pause(0.6);
        brick.StopMotor('A', 'Brake');
        brick.MoveMotor('A', motor); 
        brick.MoveMotor('D', motor);
        pause(2.2);
    end

    if touch 
        pause(0.4); 
        disp('touched');
        brick.StopMotor('AD');
        brick.MoveMotor('A', -motor);
        brick.MoveMotor('D', -motor);
        pause(1);
        brick.StopMotor('AD', 'Brake');
        brick.MoveMotor('D', leftTurn);
        pause(1);
        brick.StopMotor('D', 'Brake');

    end
    
end
