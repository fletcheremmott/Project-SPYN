%{
touchfront = 1
lightsensor = 3
ultrasonic = 4
leftwheel = D
rightwheeel = A
lift = C
%}
motor = -40;
threshold = 38;


brick.SetColorMode(3, 2);

while 1
    
    brick.MoveMotor('A', motor);
    brick.MoveMotor('D', motor);

    %touch = brick.TouchPressed(1);
    %color = brick.ColorCode(3);
    distance = brick.UltrasonicDist(4);
    
    %{
    if color == 5                                         
        disp('red');
        brick.StopMotor('AD', 'Brake');
        pause(5);
        brick.MoveMotor('A', motor); 
        brick.MoveMotor('D', motor);
        pause(0.5);
    elseif color == 2 || color == 3 
        disp('blue/green');
        run('Keytest');
        brick.MoveMotor('A', motor);
        brick.MoveMotor('D', motor);
        pause(6);
    end
    %}

    if distance > threshold            
        pause(0.60);
        brick.StopMotor('AD');
        brick.MoveMotor('D', 20);
        pause(0.6);
        brick.StopMotor('D');
        brick.MoveMotor('A', motor); 
        brick.MoveMotor('D', motor);
        pause(2);
    end

    %{
    if touch == 1 
        pause(1); 
        disp('touched');
        brick.StopMotor('AD');         
        dist = brick.UltrasonicDist(4);
        brick.MoveMotor('A', motor);
        brick.MoveMotor('D', motor);
        pause(3.5); 
        brick.StopMotor('AD', 'Brake');
    end
    %}
end