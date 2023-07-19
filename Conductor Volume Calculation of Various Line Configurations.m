%Conductor Volume Calculation of Various Line Configurations
clc
fprintf('Welcome! This program will calculate the volume of conductor in a given sytem');
fprintf('\n \n');
P=input('Enter Power Transmitted (MVA):');
PF=input('Enter Power Factor:');
W=input('Enter Line Loss:');
L=input('Enter the Length of the line in meters :');
V=input('Enter the voltage of the line (KV):');
res=input('Enter the specific resistance of the conductor:');
p=P*PF;
w=p*W;
clc
sys = input('       Type of System              Option\n=============================     ========\n2 wire DC                            (1)\n2 wire DC with Midpoint              (2)\n3 wire DC                            (3)\n1 Phase 2 wire AC                    (4)\n1 Phase 2 wire with Midpoint         (5)\n1 Phase 3 wire AC                    (6)\n1 Phase 4 wire AC                    (7)\n1 Phase 3 wire AC                    (8)\n3 Phase 3 wire AC                    (9)\n3 Phase 4 wire Ac                    (10)\n\n\Select the no. of the type of wire system used:');
switch sys
    %walang wye or delta option
    case 1
        %2 wire dc
        clc
        i1=P/V;        
        a=(2*(i1^2)*res*L)/w;
        one=2*a*L;
        fprintf('The volume of the conductor is %0.4f',one);
    case 2
        %2 wire dc w/ midpoint
        clc
        i2=P/2*V;
        b=(2*(i2^2)*(res)*L)/w;
        two=2*b*L;
        fprintf('The volume of the conductor is %0.4f',two);
    case 3
        %3 wire dc
        clc
        i3=P/2*V;
        c=(2*(i3^2)*(res)*L)/w;
        three=2.5*c*L;
        fprintf('The volume of the conductor is %0.4f',three);
    case 4
        %1 phase,2 wire ac
        clc
        i4=P/V;
        d=2*(i4^2)*res*L/w;
        four=2*d*L;
        fprintf('The volume of the conductor is %0.4f',four);
    case 5
        %1 phase,2 wire w/ midpoint
        clc
        i5=P/2*V;
        e=(2*(i5^2)*(res)*L)/w;
        five=2*e*L;
        fprintf('The volume of the conductor is %0.4f',five);
    case 6
        %1 phase, 3 wire AC
        clc
        i6=P/(sqrt(2))*V;
        f=(2*(i6^2)*(res)*(L))/w;
        six=2.5*e*L;
        fprintf('The volume of the conductor is %0.4f',six);
    case 7
        %2 phase, 4 wire AC
        clc
        i7=P/(sqrt(2))*V;
        g=(4*(i7^2)*(res)*(L))/w;
        seven=4*g*L;
        fprintf('The volume of the conductor is %0.4f',seven);
    case 8
        %2 phase, 3 wire AC
        clc
        i8=P/(sqrt(2))*V;
        h=(2*(i8^2)*(res)*(L))/w;
        eight=(2+sqrt(2))*h*L;
        fprintf('The volume of the conductor is %0.4f',eight);
    case 9
        %3 phase,3 wire AC
        clc
        i9=P/((sqrt(3))*V);
        i=(3*(i9^2)*res*L)/w;
        nine=3*i*L;
        fprintf('The volume of the conductor is %0.4f',nine);
    case 10
        %3 phase,4 wire AC
        clc
        i10=P/((sqrt(3))*V);
        j=(3*(i10^2)*res*L)/w;
        ten=3.5*j*L;
        fprintf('The volume of the conductor is %0.4f',ten);        
    otherwise
        clc
        fprintf('\nPlease enter a valid choice from the given options! Restart the program.\n');
end
        
      





