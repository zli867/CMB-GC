% 'LDGV','HDDV','SDUST','BURN','CFPP','AMSULF','AMBSULF','AMNITR','SOC','SS'
year = {};
yeartmp = {};
for i = 2002:2010
	for j = 1:12
		yeartmp = [yeartmp; i];
	end
end

for i = 1:10
	year = [year;yeartmp];
end

month = {};
monthtmp = {};
for i = 1:12
	monthtmp = [monthtmp; i];
end
for i = 1:90
	month = [month;monthtmp];
end


LDGV = [CMB.meanMonth2002(:,1);CMB.meanMonth2003(:,1);CMB.meanMonth2004(:,1);CMB.meanMonth2005(:,1);CMB.meanMonth2006(:,1);CMB.meanMonth2007(:,1);CMB.meanMonth2008(:,1);CMB.meanMonth2009(:,1);CMB.meanMonth2010(:,1)];
HDDV = [CMB.meanMonth2002(:,2);CMB.meanMonth2003(:,2);CMB.meanMonth2004(:,2);CMB.meanMonth2005(:,2);CMB.meanMonth2006(:,2);CMB.meanMonth2007(:,2);CMB.meanMonth2008(:,2);CMB.meanMonth2009(:,2);CMB.meanMonth2010(:,2)];
SDUST = [CMB.meanMonth2002(:,3);CMB.meanMonth2003(:,3);CMB.meanMonth2004(:,3);CMB.meanMonth2005(:,3);CMB.meanMonth2006(:,3);CMB.meanMonth2007(:,3);CMB.meanMonth2008(:,3);CMB.meanMonth2009(:,3);CMB.meanMonth2010(:,3)];
BURN = [CMB.meanMonth2002(:,4);CMB.meanMonth2003(:,4);CMB.meanMonth2004(:,4);CMB.meanMonth2005(:,4);CMB.meanMonth2006(:,4);CMB.meanMonth2007(:,4);CMB.meanMonth2008(:,4);CMB.meanMonth2009(:,4);CMB.meanMonth2010(:,4)];
CFPP = [CMB.meanMonth2002(:,5);CMB.meanMonth2003(:,5);CMB.meanMonth2004(:,5);CMB.meanMonth2005(:,5);CMB.meanMonth2006(:,5);CMB.meanMonth2007(:,5);CMB.meanMonth2008(:,5);CMB.meanMonth2009(:,5);CMB.meanMonth2010(:,5)];
AMSULF = [CMB.meanMonth2002(:,6);CMB.meanMonth2003(:,6);CMB.meanMonth2004(:,6);CMB.meanMonth2005(:,6);CMB.meanMonth2006(:,6);CMB.meanMonth2007(:,6);CMB.meanMonth2008(:,6);CMB.meanMonth2009(:,6);CMB.meanMonth2010(:,6)];
AMBSULF = [CMB.meanMonth2002(:,7);CMB.meanMonth2003(:,7);CMB.meanMonth2004(:,7);CMB.meanMonth2005(:,7);CMB.meanMonth2006(:,7);CMB.meanMonth2007(:,7);CMB.meanMonth2008(:,7);CMB.meanMonth2009(:,7);CMB.meanMonth2010(:,7)];
AMNITR = [CMB.meanMonth2002(:,8);CMB.meanMonth2003(:,8);CMB.meanMonth2004(:,8);CMB.meanMonth2005(:,8);CMB.meanMonth2006(:,8);CMB.meanMonth2007(:,8);CMB.meanMonth2008(:,8);CMB.meanMonth2009(:,8);CMB.meanMonth2010(:,8)];
SOC = [CMB.meanMonth2002(:,9);CMB.meanMonth2003(:,9);CMB.meanMonth2004(:,9);CMB.meanMonth2005(:,9);CMB.meanMonth2006(:,9);CMB.meanMonth2007(:,9);CMB.meanMonth2008(:,9);CMB.meanMonth2009(:,9);CMB.meanMonth2010(:,9)];
SS = [CMB.meanMonth2002(:,10);CMB.meanMonth2003(:,10);CMB.meanMonth2004(:,10);CMB.meanMonth2005(:,10);CMB.meanMonth2006(:,10);CMB.meanMonth2007(:,10);CMB.meanMonth2008(:,10);CMB.meanMonth2009(:,10);CMB.meanMonth2010(:,10)];

concentrationtmp = [LDGV;HDDV;SDUST;BURN;CFPP;AMSULF;AMBSULF;AMNITR;SOC;SS];
concentration = {};
category = {};
for i = 1:1080
	concentration = [concentration; concentrationtmp(i)];
end

categorytmp = ["LDGV";"HDDV";"SDUST";"BURN";"CFPP";"AMSULF";"AMBSULF";"AMNITR";"SOC";"SS"];
category = {};
for i = 1:10
	for j = 1:108
		category = [category; categorytmp(i)];
	end
end

colName = {'year', 'month', 'category', 'concentration'};
linetable = table(year, month, category, concentration, 'VariableNames', colName);
writetable(linetable, 'line.csv')
