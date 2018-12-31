% function thetaE = EqPotTemp(T,P,w)
% Calculates equivalent potential temperature, which is the temperature an air mass would have
% if expanded adiabatically to 1000 hPa and all water vapor is condensed.
% Formula taken from Atmospheric Science by Wallace and Hobbs (but fixed typo).
% INPUTS:
% T: Temperature, K.
% P: Pressure, hPa
% w: water vapor mixing ratio, kg h2o per kg dry air
% OUTPUT:
% thetaE: equivalent potential temperature
% 120618 GMW

function thetaE = EqPotTemp(T,P,w)

eta = 0.622; %ratio of weights of dry and moist air
Lv = 2.25e6; %latent heat of vaporization, J/kg
cpd = 1004; %heat capacity of dry air at constant p, J/K/kg

es = h2o_pvap_calc(T)./760.*1013; %saturation vapor pressure, hPa
theta = PotentialTemp(T,P);

thetaE = theta.*exp(Lv.*w./(cpd.*T));

