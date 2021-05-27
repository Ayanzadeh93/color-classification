function color_moments=color_moments(image)

R = double(image(:, :, 1));
G = double(image(:, :, 2));
B = double(image(:, :, 3));

%mean values of channels
mean_r=mean2(R);
mean_g=mean2(G);
mean_b=mean2(B);

%standart deviations of channels
std_r=std2(R);
std_g=std2(G);
std_b=std2(B);

%skewness of channels
skew_r=skewness(R);
skew_g=skewness(G);
skew_b=skewness(B);

%
color_moments=[mean_r std_r skew_r mean_g std_g skew_g mean_b std_b skew_b];

end