
clear smoothedCount


range = 1:length(LOG00058);
val1 = 1;
val2 = 1;

data = LOG00058;

data1 = data(range,val1);
lastSmoothedCount=mean(data1(1:10)); 
smoothedCount(1)=mean(data1(1:10));

alpha = 1;

x = 1;

%Smoothing Function
while x<length(data1)
    x=x+1;
    smoothedCount(x)=((alpha*data1(x))+(1-alpha)*lastSmoothedCount);
    lastSmoothedCount=smoothedCount(x);
end

figure()
hold on
plot(data(range,1),smoothedCount)

data2 = data(range,val2);
lastSmoothedCount=mean(data2(1:10)); 
smoothedCount(1)=mean(data2(1:10));

alpha = 1;

x = 1;

%Smoothing Function
while x<length(data2)
    x=x+1;
    smoothedCount(x)=((alpha*data2(x))+(1-alpha)*lastSmoothedCount);
    lastSmoothedCount=smoothedCount(x);
end

figure()

% Y = fft(data);
% L=length(data);
% Fs=50;
% 
% P2 = abs(Y/L);
% P1 = P2(1:L/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% 
% f = Fs*(0:(L/2))/L;
% plot(f,P1) 
% title('Single-Sided Amplitude Spectrum of X(t)')
% xlabel('f (Hz)')
% ylabel('|P1(f)|')

plot(data(range,1),smoothedCount)