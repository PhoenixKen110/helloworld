function [] = TimeTrans(x)
fprintf('timecost = \n');
if x < 60
    fprintf('%d s\n',x);
elseif x>=60 && x<3600
    
    m = floor(x/60);
    s = x - m*60;
    fprintf('%d min %d s \n',m,s);
    
elseif x>=3600
    
    h = floor(x/3600);
    m = floor((x - h*3600)/60);
    s = x - h*3600 - m*60;
    s = round(s);
    fprintf('%d h %d min %d s \n', h, m, s);
    
end


return