function [lb, ub, dim, f_obj, f_name] = CEC17(i_func)
dim = 30;
switch i_func
    case 1
        f_obj = @F1;
        lb = -100;
        ub = 100;
        f_name = 'F1';
        %Rastrigin
    case 1
        f_obj = @F1;
        lb = -100;
        ub = 100;
        f_name = 'F1';
        
        %Step
    case 2
        f_obj = @F3;
        lb=-100;
        ub=100;
        f_name = 'F3';
        
        %Rosenbrock
    case 3
        f_obj = @F4;
        lb = -100;
        ub = 100;
        f_name = 'F4';
        
        %Gen. Pendlized
    case 4
        f_obj = @F5;
        lb = -100;
        ub = 100;
        f_name = 'F5';
        
        %Quartic Noise
    case 5
        f_obj = @F6;
        lb = -100;
        ub = 100;
        f_name = 'F6';
        %Branin RCOS
    case 6
        f_obj = @F7;
        lb = -100;
        ub = 100;
        f_name = 'F7';
        
    case 7
        f_obj = @F8;
        lb = -100;
        ub = 100;
        f_name = 'F8';
        
    case 8
        f_obj = @F9;
        lb = -100;
        ub = 100;
        f_name = "F9";
    case 9
        f_obj = @F10;
        lb = -100;
        ub = 100;
        f_name = "F10";
    case 10
        f_obj = @F11;
        lb = -100;
        ub = 100;
        f_name = "F11";
    case 11
        f_obj = @F12;
        lb = -100;
        ub = 100;
        f_name = "F12";
    case 12
        f_obj = @F13;
        lb = -100;
        ub = 100;
        f_name = "F13";
    case 13
        f_obj = @F14;
        lb = -100;
        ub = 30;
        f_name = "F14";
    case 14
        f_obj = @F15;
        lb = -100;
        ub = 100;
        f_name = "F15";
    case 15
        f_obj = @F16;
        lb = -100;
        ub = 100;
        f_name = "F16";
    case 16
        f_obj = @F17;
        lb = -100;
        ub = 100;
        f_name = "F17";
    case 17
        f_obj = @F18;
        lb = -100;
        ub = 100;
        f_name = "F18";
    case 18
        f_obj = @F19;
        lb = -100;
        ub = 100;
        f_name = "F19";
    case 19
        f_obj = @F20;
        lb = -100;
        ub = 100;
        f_name = "F20";
    case 20
        f_obj = @F21;
        lb = -100;
        ub = 100;
        f_name = "F21";
    case 21
        f_obj = @F22;
        lb = -100;
        ub = 100;
        f_name = "F22";
    case 22
        f_obj = @F23;
        lb = -100;
        ub = 100;
        f_name = "F23";
    case 23
        f_obj = @F24;
        lb = -100;
        ub = 100;
        f_name = "F24";
    case 24
        f_obj = @F25;
        lb = -100;
        ub = 100;
        f_name = "F25";
    case 25
        f_obj = @F26;
        lb = -100;
        ub = 100;
        f_name = "F26";
    case 26
        f_obj = @F27;
        lb = -100;
        ub = 100;
        f_name = "F27";
    case 27
        f_obj = @F28;
        lb = -100;
        ub = 100;
        f_name = "F28";
    case 28
        f_obj = @F29;
        lb = -100;
        ub = 100;
        f_name = "F29";
    case 29
        f_obj = @F30;
        lb = -100;
        ub = 100;
        f_name = "F30";
        
end

    function o = F1(x)
        o = cec17_func(x', 1);
    end

    function o = F2(x)
        o = cec17_func(x', 2);
    end

    function o = F3(x)
        o = cec17_func(x', 3);
    end

    function o = F4(x)
        o = cec17_func(x', 4);
    end

    function o = F5(x)
        o = cec17_func(x', 5);
    end
    function o = F6(x)
        o = cec17_func(x', 6);
    end

    function o = F7(x)
        o = cec17_func(x', 7);
    end

    function o = F8(x)
        o = cec17_func(x', 8);
    end

    function o = F9(x)
        o = cec17_func(x', 9);
    end

    function o = F10(x)
        o = cec17_func(x', 10);
    end

    function o = F11(x)
        o = cec17_func(x', 11);
    end

    function o = F12(x)
        o = cec17_func(x', 12);
    end
    function o = F13(x)
        o = cec17_func(x', 13);
    end
    function o = F14(x)
        o = cec17_func(x', 14);
    end
    function o = F15(x)
        o = cec17_func(x', 15);
    end
    function o = F16(x)
        o = cec17_func(x', 16);
    end
    function o = F17(x)
        o = cec17_func(x', 17);
    end
    function o = F18(x)
        o = cec17_func(x', 18);
    end
    function o = F19(x)
        o = cec17_func(x', 19);
    end
    function o = F20(x)
        o = cec17_func(x', 20);
    end
    function o = F21(x)
        o = cec17_func(x', 21);
    end
    function o = F22(x)
        o = cec17_func(x', 22);
    end
    function o = F23(x)
        o = cec17_func(x', 23);
    end
    function o = F24(x)
        o = cec17_func(x', 24);
    end
    function o = F25(x)
        o = cec17_func(x', 25);
    end
    function o = F26(x)
        o = cec17_func(x', 26);
    end
    function o = F27(x)
        o = cec17_func(x', 27);
    end
    function o = F28(x)
        o = cec17_func(x', 28);
    end
    function o = F29(x)
        o = cec17_func(x', 29);
    end
    function o = F30(x)
        o = cec17_func(x', 30);
    end
end