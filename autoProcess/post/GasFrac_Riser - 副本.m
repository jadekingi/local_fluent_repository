clear;
clc;
format long;
%data_loading
cd('../..');
bin3_data(1,1) = load ('bin3_0.01_results/data/40.00s_riser.txt');
bin3_data(2,1) = load ('bin3_0.01_results/data/50.00s_riser.txt');
bin3_data(3,1) = load ('bin3_0.01_results/data/60.00s_riser.txt');
bin3_data(4,1) = load ('bin3_0.01_results/data/70.00s_riser.txt');
bin3_data(5,1) = load ('bin3_0.01_results/data/80.00s_riser.txt');
bin3_data(6,1) = load ('bin3_0.02_results/data/40.00s_riser.txt');
bin3_data(7,1) = load ('bin3_0.02_results/data/50.00s_riser.txt');
bin3_data(8,1) = load ('bin3_0.02_results/data/60.00s_riser.txt');
bin3_data(9,1) = load ('bin3_0.02_results/data/70.00s_riser.txt');
bin3_data(10,1) = load ('bin3_0.02_results/data/80.00s_riser.txt');
bin3_data(11,1) = load ('bin3_0.03_results/data/40.00s_riser.txt');
bin3_data(12,1) = load ('bin3_0.03_results/data/50.00s_riser.txt');
bin3_data(13,1) = load ('bin3_0.03_results/data/60.00s_riser.txt');
bin3_data(14,1) = load ('bin3_0.03_results/data/70.00s_riser.txt');
bin3_data(15,1) = load ('bin3_0.03_results/data/80.00s_riser.txt');
bin3_data(16,1) = load ('bin3_0.04_results/data/40.00s_riser.txt');
bin3_data(17,1) = load ('bin3_0.04_results/data/50.00s_riser.txt');
bin3_data(18,1) = load ('bin3_0.04_results/data/60.00s_riser.txt');
bin3_data(19,1) = load ('bin3_0.04_results/data/68.00s_riser.txt');
bin3_data(1,2) = load ('bin3_0.01_results/data/40.00s_downcomer.txt');
bin3_data(2,2) = load ('bin3_0.01_results/data/50.00s_downcomer.txt');
bin3_data(3,2) = load ('bin3_0.01_results/data/60.00s_downcomer.txt');
bin3_data(4,2) = load ('bin3_0.01_results/data/70.00s_downcomer.txt');
bin3_data(5,2) = load ('bin3_0.01_results/data/80.00s_downcomer.txt');
bin3_data(6,2) = load ('bin3_0.02_results/data/40.00s_downcomer.txt');
bin3_data(7,2) = load ('bin3_0.02_results/data/50.00s_downcomer.txt');
bin3_data(8,2) = load ('bin3_0.02_results/data/60.00s_downcomer.txt');
bin3_data(9,2) = load ('bin3_0.02_results/data/70.00s_downcomer.txt');
bin3_data(10,2) = load ('bin3_0.02_results/data/80.00s_downcomer.txt');
bin3_data(11,2) = load ('bin3_0.03_results/data/40.00s_downcomer.txt');
bin3_data(12,2) = load ('bin3_0.03_results/data/50.00s_downcomer.txt');
bin3_data(13,2) = load ('bin3_0.03_results/data/60.00s_downcomer.txt');
bin3_data(14,2) = load ('bin3_0.03_results/data/70.00s_downcomer.txt');
bin3_data(15,2) = load ('bin3_0.03_results/data/80.00s_downcomer.txt');
bin3_data(16,2) = load ('bin3_0.04_results/data/40.00s_downcomer.txt');
bin3_data(17,2) = load ('bin3_0.04_results/data/50.00s_downcomer.txt');
bin3_data(18,2) = load ('bin3_0.04_results/data/60.00s_downcomer.txt');
bin3_data(19,2) = load ('bin3_0.04_results/data/68.00s_downcomer.txt');


%GasHoldUp_Riser_Average
u = 1;
for num = 1:1:19
	riser = bin3_data(num,1);
	downcomer = bin3_data(num,2);
	riser = sortrows(riser,1);
	index = size(riser);
	i = 1;
	tempsumFrac = 0;
	tempsumVol = 0;
	for n = 1:index(1,1)
		tempsumFrac = tempsumFrac + riser(n,2)*riser(n,3);
		tempsumVol = tempsumVol + riser(n,3);
		if(n>=2 && riser(n,1) ~= riser(n-1,1))
	            tempsumFrac = tempsumFrac - riser(n,2)*riser(n,3);
				tempsumVol = tempsumVol - riser(n,3);
				res(i,1) = riser(n-1,1);
				res(i,2) = tempsumFrac/tempsumVol;
				i = i+1;
				tempsumFrac = riser(n,2)*riser(n,3);                      
				tempsumVol = riser(n,3);
		end	
			
	end

	Fsum = 0;
	Vsum = 0;
	for n =1:index(1,1)
	    Fsum = Fsum + riser(n,2)*riser(n,3);
	    Vsum = Vsum + riser(n,3);
	end
	overallAveFrac_riser(u,1) = num;
	overallAveFrac_riser(u,2) = Fsum/Vsum;


	scatter(res(:,1),res(:,2),15,'filled');
	if u == 1
	    hold on
	end
	u = u + 1;

end
hold off
xlabel('height/m');
ylabel('GasHoldUp');
title('bin3-sgv0.02');
legend('40s','50s','60s','70s','80s');
overallAveFrac_riser
mean(overallAveFrac_riser(:,2))




