function [ y ] = Neuron( w, x )
    pot=x'*w;
    if pot>=0
        y=1;
    else
        y=-1;
    end
end
