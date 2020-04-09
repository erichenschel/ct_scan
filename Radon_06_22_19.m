figure
subplot(2,2,3);                     %

I = phantom(256);                   %The mathematical 
imshow(I);                          %representation of a head.
theta = 120;                      %alpha value from (0,pi)
[R,xp] = radon(I,theta);            %vector xp contatining the radial coordinates for each row in R.
disp(xp);


subplot(2,2,[1,2]);                 %
imagesc(theta,xp,R);                %the radon transform on I rotating 180degrees
title('R_{\theta} (X\prime)');      %Sinogram heat map
xlabel('\theta (degrees)');         %
ylabel('X\prime');                  %
set(gca,'XTick',0:20:180);          %
colormap(hot);                      %   
colorbar                            %

subplot(2,2,4);                     %
IR = iradon(R,theta);               %Inverse Radon Transform
imshow(IR);                         %Reconstruction

