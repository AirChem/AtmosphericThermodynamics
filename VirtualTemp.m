% function Tv = VirtualTemp(T,w)
% Calculates virtual temperature, which is "the temperature that dry air 
% would need to attain to have the same density as moist air at constant pressure."
% Formula taken from Atmospheric Science by Wallace and Hobbs.
% INPUTS:
% T: temperature, K.
% w: water vapor mixing ratio, kg h2o per kg dry air
% OUTPUT is virtual temperature in same units as input.
% 120618 GMW

function Tv = VirtualTemp(T,w)

eta = 0.622; %ratio of weights of dry and moist air

Tv = T.*(w + eta)./(eta.*(1+w));