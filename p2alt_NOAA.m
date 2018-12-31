function alt = p2alt_NOAA(P)
% function alt = p2alt_NOAA(P);
% converts prssure to altitude using NOAA's formula:
% https://en.wikipedia.org/wiki/Pressure_altitude
% INPUT P is atmospheric pressure in mb
% OUTPUT alt is altitude in m above sea level.
%
% 20180713 GMW

alt = (1-(P./1013.25).^0.190284).*145366.45.*0.3048; %last value is feet to m