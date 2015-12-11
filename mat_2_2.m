 x = 0:10*pi; y = sin(x);
            xi = 0:10*pi/9:10*pi;
            yi = interp1(x, y, xi)
         
            yi = interp1(x, y, xi, 'spline' )
          