X = [];
y = [];
feature_iteration = 1;
sample_dimension = 1;
moment_image = [];
image_folder = {'resimler_b/black/','resimler_b/blue/','resimler_b/green/','resimler_b/orange/','resimler_b/purple/','resimler_b/red/','resimler_b/white/','resimler_b/yellow/'};
for class=1:8
    image_array = dir(char(image_folder(class)));
    names = fieldnames(image_array(1));
    for i=3:2:22
        image1_name = getfield(image_array(i,1),names{1});
        image1 = imread(strcat(char(image_folder(class)),image1_name));
        image2_name = getfield(image_array(i+1,1),names{1});
        image2 = imread(strcat(char(image_folder(class)), image2_name)); %mask image
        sample_dimension = 1;
        for a=1:5:size(image2,1)
            for b=1:5:size(image2,2)
                if image2(a,b,1) == 255
                    moment_image(sample_dimension,1,1) = image1(a,b,1);
                    moment_image(sample_dimension,1,2) = image1(a,b,2);
                    moment_image(sample_dimension,1,3) = image1(a,b,3);
                    sample_dimension = sample_dimension + 1;
                    if sample_dimension == 25
                        sonuc_moment = color_moments(moment_image);
                        X(feature_iteration,1) = sonuc_moment(1); 
                        X(feature_iteration,2) = sonuc_moment(2); 
                        X(feature_iteration,3) = sonuc_moment(3); 
                        X(feature_iteration,4) = sonuc_moment(4); 
                        X(feature_iteration,5) = sonuc_moment(5); 
                        X(feature_iteration,6) = sonuc_moment(6); 
                        y(feature_iteration,1) = class;
                        feature_iteration = feature_iteration + 1;
                        sample_dimension = 1;
                        moment_image = [];
                    end
                end
            end
        end
    end
end


SMVModel = fitcecoc(X, y);

%TEST PART
predictedLabels = predict(SMVModel, test_data);

correct_number = 0;
dimension = size(predictedLabels,1);
for i=1:dimension
    if predictedLabels(i) == test_label(i)
        correct_number = correct_number + 1;
    end
end
display(correct_number);
result = correct_number/dimension;
display('Accuracy:');
display(result);
