%year, 'LDGV'; 'HDDV'; 'SDUST'; 'BURN';'CFPP';'AMSULF';'AMBSULF';'AMNITR';'SOC';'SS';'Other'
year = {};
for i = 2002:2010
	year = [year; i];
end

LDGV = {};
HDDV = {};
SDUST = {};
BURN = {};
CFPP = {};
AMSULF = {};
AMBSULF = {};
AMNITR = {};
SOC = {};
SS = {};
Other = {};
LDGV = [LDGV; data.contribution2002(1); data.contribution2003(1); data.contribution2004(1); data.contribution2005(1); data.contribution2006(1); data.contribution2007(1); 
	data.contribution2008(1); data.contribution2009(1); data.contribution2010(1)];
HDDV = [HDDV; data.contribution2002(2); data.contribution2003(2); data.contribution2004(2); data.contribution2005(2); data.contribution2006(2); data.contribution2007(2); 
	data.contribution2008(2); data.contribution2009(2); data.contribution2010(2)];
SDUST = [SDUST; data.contribution2002(3); data.contribution2003(3); data.contribution2004(3); data.contribution2005(3); data.contribution2006(3); data.contribution2007(3); 
	data.contribution2008(3); data.contribution2009(3); data.contribution2010(3)];
BURN = [BURN; data.contribution2002(4); data.contribution2003(4); data.contribution2004(4); data.contribution2005(4); data.contribution2006(4); data.contribution2007(4); 
	data.contribution2008(4); data.contribution2009(4); data.contribution2010(4)];
CFPP = [CFPP; data.contribution2002(5); data.contribution2003(5); data.contribution2004(5); data.contribution2005(5); data.contribution2006(5); data.contribution2007(5); 
	data.contribution2008(5); data.contribution2009(5); data.contribution2010(5)];
AMSULF = [AMSULF; data.contribution2002(6); data.contribution2003(6); data.contribution2004(6); data.contribution2005(6); data.contribution2006(6); data.contribution2007(6); 
	data.contribution2008(6); data.contribution2009(6); data.contribution2010(6)];
AMBSULF = [AMBSULF; data.contribution2002(7); data.contribution2003(7); data.contribution2004(7); data.contribution2005(7); data.contribution2006(7); data.contribution2007(7); 
	data.contribution2008(7); data.contribution2009(7); data.contribution2010(7)];
AMNITR = [AMNITR; data.contribution2002(8); data.contribution2003(8); data.contribution2004(8); data.contribution2005(8); data.contribution2006(8); data.contribution2007(8); 
	data.contribution2008(8); data.contribution2009(8); data.contribution2010(8)];
SOC = [SOC; data.contribution2002(9); data.contribution2003(9); data.contribution2004(9); data.contribution2005(9); data.contribution2006(9); data.contribution2007(9); 
	data.contribution2008(9); data.contribution2009(9); data.contribution2010(9)];
SS = [SS; data.contribution2002(10); data.contribution2003(10); data.contribution2004(10); data.contribution2005(10); data.contribution2006(10); data.contribution2007(10); 
	data.contribution2008(10); data.contribution2009(10); data.contribution2010(10)];
Other = [Other; data.contribution2002(11); data.contribution2003(11); data.contribution2004(11); data.contribution2005(11); data.contribution2006(11); data.contribution2007(11); 
	data.contribution2008(11); data.contribution2009(11); data.contribution2010(11)];

colName = {'year', 'LDGV', 'HDDV', 'SDUST', 'BURN', 'CFPP', 'AMSULF', 'AMBSULF', 'AMNITR', 'SOC', 'SS', 'Other'};
stacktable = table(year, LDGV, HDDV, SDUST, BURN, CFPP, AMSULF, AMBSULF, AMNITR, SOC, SS, Other,'VariableNames', colName);
writetable(stacktable, 'stack.csv')