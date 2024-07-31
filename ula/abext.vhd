entity abext is
    port(
        x : in bit;
        y : in bit;
        z : in bit;
        a : in bit;
        b : in bit;
        ia : out bit;
        ib : out bit
    );
end abext;

architecture abext of abext is
    begin
        ia <= ((not(x) and a) or (x and ((not(y) and ((not(z) and (a and b))
            or (z and ((a xor b) or (a and b))))) or (y and ((not(z) and (a xor b))
            or (z and not(a)))))));
        ib <= ((not(x) and not(y)) and (z xor b));
end abext;