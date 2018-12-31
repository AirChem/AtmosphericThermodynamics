% function theta = PotentialTemp(T,P)
% Calculates potential temperature, which is the temperature 
% an air mass would have if it were expanded adiabatically to a pressure of 1000 hPa.
% Formula taken from Atmospheric Science by Wallace and Hobbs.
% INPUTS:
% T: temperature, K
% P: pressure in hPa
% OUTPUT:
% theta: potential temperature in same units as input.
% 120618 GMW

function theta = PotentialTemp(T,P)

cpd = 1004; %heat capacity of dry air at constant p, J/K/kg
Rd = 287; %gas constant of dry air, J/K/kg
P0 = 1000; %reference pressure, hPa

theta = T.*(P0./P).^(Rd./cpd);