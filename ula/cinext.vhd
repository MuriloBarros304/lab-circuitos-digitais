entity cinext is
    port(
        x : in bit;
        y : in bit;
        z : in bit;
        cin : out bit
    );
end cinext;

architecture cinext of cinext is
    begin
        cin <= (not(x) and not(y) and z) or (not(x) and y and not(z));
end cinext;