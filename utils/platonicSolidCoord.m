% generate default ambisonic speaker configurations. 
% coords from http://paulbourke.net/geometry/platonic/

% 2nd order: icosahedron
ico =  ...
[-0.5000         0   -0.3090; ...
-0.5000         0    0.3090; ...
-0.3090   -0.5000         0; ...
-0.3090    0.5000         0; ...
      0   -0.3090   -0.5000; ...
      0   -0.3090    0.5000; ...
      0    0.3090   -0.5000; ...
      0    0.3090    0.5000; ...
0.3090   -0.5000         0; ...
0.3090    0.5000         0; ...
0.5000         0   -0.3090; ...
0.5000         0    0.3090];

plot3(ico(:,1), ico(:,2), ico(:,3), 'o');
[TH,PHI,R] = cart2sph(ico(:,1), ico(:,2), ico(:,3));
icoSph = [rad2deg(TH),rad2deg(PHI),R];
icoSph

% 3rd order: dodecahedron
dode = [ ...
   -0.5000   -0.1910         0; ...
   -0.5000    0.1910         0; ...
   -0.3090   -0.3090   -0.3090; ...
   -0.3090   -0.3090    0.3090; ...
   -0.3090    0.3090   -0.3090; ...
   -0.3090    0.3090    0.3090; ...
   -0.1910         0   -0.5000; ...
   -0.1910         0    0.5000; ...
         0   -0.5000   -0.1910; ...
         0   -0.5000    0.1910; ...
         0    0.5000   -0.1910; ...
         0    0.5000    0.1910; ...
    0.1910         0   -0.5000; ...
    0.1910         0    0.5000; ...
    0.3090   -0.3090   -0.3090; ...
    0.3090   -0.3090    0.3090; ...
    0.3090    0.3090   -0.3090; ...
    0.3090    0.3090    0.3090; ...
    0.5000   -0.1910         0; ...
    0.5000    0.1910         0];    

plot3(dode(:,1), dode(:,2), dode(:,3), 'o');
[TH,PHI,R] = cart2sph(dode(:,1), dode(:,2), dode(:,3));
dodeSph = [rad2deg(TH),rad2deg(PHI),R];
dodeSph