%To find Maximum Power Output

pmax = max(PV.signals.values(:,2));
vrange = max(PV.signals.values(:,1));
irange = max(PV.signals.values(:,3));
[tf,index]=ismember(pmax,PV.signals.values(:,2));
disp(' Maximum power: ')
disp(PV.signals.values(index,2));
disp(' Maximum voltage: ')
disp(PV.signals.values(index,1));
disp(' Maximum current: ');
disp(PV.signals.values(index,3));
figure(1)
plot(PV.signals.values(:,1),PV.signals.values(:,2)); 
xlabel('Vpv');
ylabel('Ppv');
title('PV Characteristics');
axis([0 vrange 0 pmax+5]);
figure(2)
plot(PV.signals.values(:,1),PV.signals.values(:,3));
xlabel('Vpv');
ylabel('Ipv');
title('IV Characteristics');
axis([0 vrange 0 irange+0.3]);