function dx = motor_fcn(t, x)
    %% PARAMETOS
    L = 0.023;
    R = 2;
    Kv = 0.01;
    J = 0.001;
    B = 0.0012;
    Kt = 0.01;
    Vin = 24;
    
    %% DINAMICA DEL SISTEMA
    dx = zeros(2, 1);
    
    %% MATRICES
    A = [-(1/J)*B (1/J)*Kt; -(1/L)*Kv -(1/L)*R];
    B = [0; 1/L];
    
    dx(1:2) = A*[x(1); x(2)]+B*Vin*0.25;
end