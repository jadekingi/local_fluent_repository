clear;
clc;
close all;
format long;


% data_loading

cd('J:\RESULTS');
bin3_data_GasHoldUp_Bins = cell(5,4,2);%(time,sgv,r/d)
bin3_data_liq = cell(5,4,2);
bin3_data_GasHoldUp_Bins{1,1,1} = load ('bin3_0.01_results/data/40.00s_riser.txt');
bin3_data_GasHoldUp_Bins{2,1,1} = load ('bin3_0.01_results/data/50.00s_riser.txt');
bin3_data_GasHoldUp_Bins{3,1,1} = load ('bin3_0.01_results/data/60.00s_riser.txt');
bin3_data_GasHoldUp_Bins{4,1,1} = load ('bin3_0.01_results/data/70.00s_riser.txt');
bin3_data_GasHoldUp_Bins{5,1,1} = load ('bin3_0.01_results/data/80.00s_riser.txt');
bin3_data_GasHoldUp_Bins{1,2,1} = load ('bin3_0.02_results/data/40.00s_riser.txt');
bin3_data_GasHoldUp_Bins{2,2,1} = load ('bin3_0.02_results/data/50.00s_riser.txt');
bin3_data_GasHoldUp_Bins{3,2,1} = load ('bin3_0.02_results/data/60.00s_riser.txt');
bin3_data_GasHoldUp_Bins{4,2,1} = load ('bin3_0.02_results/data/70.00s_riser.txt');
bin3_data_GasHoldUp_Bins{5,2,1} = load ('bin3_0.02_results/data/80.00s_riser.txt');
bin3_data_GasHoldUp_Bins{1,3,1} = load ('bin3_0.03_results/data/40.00s_riser.txt');
bin3_data_GasHoldUp_Bins{2,3,1} = load ('bin3_0.03_results/data/50.00s_riser.txt');
bin3_data_GasHoldUp_Bins{3,3,1} = load ('bin3_0.03_results/data/60.00s_riser.txt');
bin3_data_GasHoldUp_Bins{4,3,1} = load ('bin3_0.03_results/data/70.00s_riser.txt');
bin3_data_GasHoldUp_Bins{5,3,1} = load ('bin3_0.03_results/data/80.00s_riser.txt');
bin3_data_GasHoldUp_Bins{1,4,1} = load ('bin3_0.04_results/data/40.00s_riser.txt');
bin3_data_GasHoldUp_Bins{2,4,1} = load ('bin3_0.04_results/data/50.00s_riser.txt');
bin3_data_GasHoldUp_Bins{3,4,1} = load ('bin3_0.04_results/data/60.00s_riser.txt');
bin3_data_GasHoldUp_Bins{4,4,1} = load ('bin3_0.04_results/data/68.00s_riser.txt');
bin3_data_GasHoldUp_Bins{1,1,2} = load ('bin3_0.01_results/data/40.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{2,1,2} = load ('bin3_0.01_results/data/50.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{3,1,2} = load ('bin3_0.01_results/data/60.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{4,1,2} = load ('bin3_0.01_results/data/70.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{5,1,2} = load ('bin3_0.01_results/data/80.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{1,2,2} = load ('bin3_0.02_results/data/40.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{2,2,2} = load ('bin3_0.02_results/data/50.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{3,2,2} = load ('bin3_0.02_results/data/60.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{4,2,2} = load ('bin3_0.02_results/data/70.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{5,2,2} = load ('bin3_0.02_results/data/80.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{1,3,2} = load ('bin3_0.03_results/data/40.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{2,3,2} = load ('bin3_0.03_results/data/50.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{3,3,2} = load ('bin3_0.03_results/data/60.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{4,3,2} = load ('bin3_0.03_results/data/70.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{5,3,2} = load ('bin3_0.03_results/data/80.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{1,4,2} = load ('bin3_0.04_results/data/40.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{2,4,2} = load ('bin3_0.04_results/data/50.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{3,4,2} = load ('bin3_0.04_results/data/60.00s_downcomer.txt');
bin3_data_GasHoldUp_Bins{4,4,2} = load ('bin3_0.04_results/data/68.00s_downcomer.txt');

bin3_data_liq{1,1,1} = load ('bin3_0.01_results/data/40.00s_riser_liq.txt');
bin3_data_liq{2,1,1} = load ('bin3_0.01_results/data/50.00s_riser_liq.txt');
bin3_data_liq{3,1,1} = load ('bin3_0.01_results/data/60.00s_riser_liq.txt');
bin3_data_liq{4,1,1} = load ('bin3_0.01_results/data/70.00s_riser_liq.txt');
bin3_data_liq{5,1,1} = load ('bin3_0.01_results/data/80.00s_riser_liq.txt');
bin3_data_liq{1,2,1} = load ('bin3_0.02_results/data/40.00s_riser_liq.txt');
bin3_data_liq{2,2,1} = load ('bin3_0.02_results/data/50.00s_riser_liq.txt');
bin3_data_liq{3,2,1} = load ('bin3_0.02_results/data/60.00s_riser_liq.txt');
bin3_data_liq{4,2,1} = load ('bin3_0.02_results/data/70.00s_riser_liq.txt');
bin3_data_liq{5,2,1} = load ('bin3_0.02_results/data/80.00s_riser_liq.txt');
bin3_data_liq{1,3,1} = load ('bin3_0.03_results/data/40.00s_riser_liq.txt');
bin3_data_liq{2,3,1} = load ('bin3_0.03_results/data/50.00s_riser_liq.txt');
bin3_data_liq{3,3,1} = load ('bin3_0.03_results/data/60.00s_riser_liq.txt');
bin3_data_liq{4,3,1} = load ('bin3_0.03_results/data/70.00s_riser_liq.txt');
bin3_data_liq{5,3,1} = load ('bin3_0.03_results/data/80.00s_riser_liq.txt');
bin3_data_liq{1,4,1} = load ('bin3_0.04_results/data/40.00s_riser_liq.txt');
bin3_data_liq{2,4,1} = load ('bin3_0.04_results/data/50.00s_riser_liq.txt');
bin3_data_liq{3,4,1} = load ('bin3_0.04_results/data/60.00s_riser_liq.txt');
bin3_data_liq{4,4,1} = load ('bin3_0.04_results/data/68.00s_riser_liq.txt');
bin3_data_liq{1,1,2} = load ('bin3_0.01_results/data/40.00s_downcomer_liq.txt');
bin3_data_liq{2,1,2} = load ('bin3_0.01_results/data/50.00s_downcomer_liq.txt');
bin3_data_liq{3,1,2} = load ('bin3_0.01_results/data/60.00s_downcomer_liq.txt');
bin3_data_liq{4,1,2} = load ('bin3_0.01_results/data/70.00s_downcomer_liq.txt');
bin3_data_liq{5,1,2} = load ('bin3_0.01_results/data/80.00s_downcomer_liq.txt');
bin3_data_liq{1,2,2} = load ('bin3_0.02_results/data/40.00s_downcomer_liq.txt');
bin3_data_liq{2,2,2} = load ('bin3_0.02_results/data/50.00s_downcomer_liq.txt');
bin3_data_liq{3,2,2} = load ('bin3_0.02_results/data/60.00s_downcomer_liq.txt');
bin3_data_liq{4,2,2} = load ('bin3_0.02_results/data/70.00s_downcomer_liq.txt');
bin3_data_liq{5,2,2} = load ('bin3_0.02_results/data/80.00s_downcomer_liq.txt');
bin3_data_liq{1,3,2} = load ('bin3_0.03_results/data/40.00s_downcomer_liq.txt');
bin3_data_liq{2,3,2} = load ('bin3_0.03_results/data/50.00s_downcomer_liq.txt');
bin3_data_liq{3,3,2} = load ('bin3_0.03_results/data/60.00s_downcomer_liq.txt');
bin3_data_liq{4,3,2} = load ('bin3_0.03_results/data/70.00s_downcomer_liq.txt');
bin3_data_liq{5,3,2} = load ('bin3_0.03_results/data/80.00s_downcomer_liq.txt');
bin3_data_liq{1,4,2} = load ('bin3_0.04_results/data/40.00s_downcomer_liq.txt');
bin3_data_liq{2,4,2} = load ('bin3_0.04_results/data/50.00s_downcomer_liq.txt');
bin3_data_liq{3,4,2} = load ('bin3_0.04_results/data/60.00s_downcomer_liq.txt');
bin3_data_liq{4,4,2} = load ('bin3_0.04_results/data/68.00s_downcomer_liq.txt');

bin2_data_gas{1,4,1} = load('bin2_0.04_results/40.00s_riser.txt');
bin2_data_gas{1,4,2} = load('bin2_0.04_results/40.00s_downcomer.txt');
bin4_data_gas{1,4,1} = load('bin4_0.04_results/40.00s_riser.txt');
bin4_data_gas{1,4,2} = load('bin4_0.04_results/40.00s_downcomer.txt');
bin5_data_gas{1,4,1} = load('bin5_0.04_results/40.00s_riser.txt');
bin5_data_gas{1,4,2} = load('bin5_0.04_results/40.00s_downcomer.txt');

bin2_data_liq{1,4,1} = load('bin2_0.04_results/40.00s_riser_liq.txt');
bin2_data_liq{1,4,2} = load('bin2_0.04_results/40.00s_downcomer_liq.txt');
bin4_data_liq{1,4,1} = load('bin4_0.04_results/40.00s_riser_liq.txt');
bin4_data_liq{1,4,2} = load('bin4_0.04_results/40.00s_downcomer_liq.txt');
bin5_data_liq{1,4,1} = load('bin5_0.04_results/40.00s_riser_liq.txt');
bin5_data_liq{1,4,2} = load('bin5_0.04_results/40.00s_downcomer_liq.txt');

% bin,rd
various_bins_gas{2,1} = bin2_data_gas{1,4,1};
various_bins_gas{2,2} = bin2_data_gas{1,4,2};
various_bins_gas{3,1} = bin3_data_GasHoldUp_Bins{1,4,1};
various_bins_gas{3,2} = bin3_data_GasHoldUp_Bins{1,4,2};
various_bins_gas{4,1} = bin4_data_gas{1,4,1};
various_bins_gas{4,2} = bin4_data_gas{1,4,2};
various_bins_gas{5,1} = bin5_data_gas{1,4,1};
various_bins_gas{5,2} = bin5_data_gas{1,4,2};

various_bins_liq{2,1} = bin2_data_liq{1,4,1};
various_bins_liq{2,2} = bin2_data_liq{1,4,2};
various_bins_liq{3,1} = bin3_data_liq{1,4,1};
various_bins_liq{3,2} = bin3_data_liq{1,4,2};
various_bins_liq{4,1} = bin4_data_liq{1,4,1};
various_bins_liq{4,2} = bin4_data_liq{1,4,2};
various_bins_liq{5,1} = bin5_data_liq{1,4,1};
various_bins_liq{5,2} = bin5_data_liq{1,4,2};

filename_index = 1;

%---------------------------------------1-----------------------------------------------%

%    Overall_GasHoldUp_Average

u = 1;
for sgv_index = 1:1:4
	max_index = 4;
	for time_index= 1:1:max_index
		riser = bin3_data_GasHoldUp_Bins{time_index,sgv_index,1};
		downcomer = bin3_data_GasHoldUp_Bins{time_index,sgv_index,2};
		index_riser = size(riser);
		index_downcomer = size(downcomer);
		F_riser_sum = 0;
		V_riser_sum = 0;
		F_downcomer_sum = 0;
		V_downcomer_sum = 0;
		for n =1:index_riser(1,1)
		    F_riser_sum = F_riser_sum + riser(n,2)*riser(n,3);
		    V_riser_sum = V_riser_sum + riser(n,3);
        end
        for n = 1:index_downcomer(1,1)
		    F_downcomer_sum = F_downcomer_sum + downcomer(n,2)*downcomer(n,3);
		    V_downcomer_sum = V_downcomer_sum + downcomer(n,3);
		end
        
		temp_theSecond_theSGV_Ave(u,1) = time_index;
		temp_theSecond_theSGV_Ave(u,2) = F_riser_sum/V_riser_sum;
		temp_theSecond_theSGV_Ave(u,3) = F_downcomer_sum/V_downcomer_sum;
        temp_theSecond_theSGV_Ave(u,4) = sgv_index;
		u = u+1;

    end
	theSGV_GH_Ave(sgv_index,1) = mean(temp_theSecond_theSGV_Ave(:,2));
	theSGV_GH_Ave(sgv_index,2) = mean(temp_theSecond_theSGV_Ave(:,3));
    u = 1;

end

writematrix(theSGV_GH_Ave,'./results_post/theSGV_GH_Ave.txt');
sgv = [0.01,0.02,0.03,0.04];
figure
plot(sgv,theSGV_GH_Ave(:,1),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
xlabel('Gas superficial velocity(m/s)');
ylabel('Overall Gas Holdup(-)');
title('Overall gas holdup');
hold on
plot(sgv,theSGV_GH_Ave(:,2),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
legend('Riser','Downcomer','location','best');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
hold off
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;

% --------------------------------------------------2-----------------------------------------------------------------------------------------%

%Local_GasHoldUp_with_Height

for sgv_index = 1:1:4
	riser = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
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
				Local_GasHoldUp(i,1,sgv_index) = riser(n-1,1);
				Local_GasHoldUp(i,2,sgv_index) = tempsumFrac/tempsumVol;
				i = i+1;
				tempsumFrac = riser(n,2)*riser(n,3);                      
				tempsumVol = riser(n,3);
		end	
			
	end
	Local_GasHoldUp(i,1,sgv_index) = riser(n-1,1);
	Local_GasHoldUp(i,2,sgv_index) = tempsumFrac/tempsumVol;

end
writematrix(Local_GasHoldUp,'./results_post/Local_GasHoldUp.txt');
figure
scatter(Local_GasHoldUp(:,1,1),Local_GasHoldUp(:,2,1),15,'filled','MarkerFaceColor','#151f30');
xlabel('Height(m)');
ylabel('Local Gas HoldUp(-)');
title('Local Gas HoldUp with Increasing Height');
ylim([-0.05,0.35]);
hold on
scatter(Local_GasHoldUp(:,1,2),Local_GasHoldUp(:,2,2),15,'filled','MarkerFaceColor','#103778');
scatter(Local_GasHoldUp(:,1,3),Local_GasHoldUp(:,2,3),15,'filled','MarkerFaceColor','#0593a2');
scatter(Local_GasHoldUp(:,1,4),Local_GasHoldUp(:,2,4),15,'filled','MarkerFaceColor','#ff7a48');
legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
hold off
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


% ---------------------------------------------3----------------------------------------------------%


% Local_GasHoldUp_with_X

for sgv_index = 1:1:4
	riser = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
	riser = sortrows(riser,1);
	index = size(riser);
	h_index = 1;
	height = 0.1;
	i = 1;
    n = 1;
    temp = 0;
	while n <= index(1,1)
		if(0.7 > riser(n,1) > 0.1)
			if(riser(n,1) > height && riser(n,1) < height + 0.2)
				if( i == 1)
					temp = riser(n,1);
					Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
					Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
					Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
					% Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%for debug
					i = i + 1;
				elseif (riser(n,1) == temp)
					Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
					Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
					Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
					Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%Y for debug

					i = i + 1;
					
				end
			else
				height = height + 0.2;
				h_index = h_index + 1;
				i = 1;	
				n = n-1;
			end

		end

        n = n+1;
	end
	n = n - 1;
	h_index = h_index + 1;
	temp_last = riser(n,1);
	i = 1;
	while n >= 1
		if(riser(n,1) == temp_last)
			Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
			Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
			Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
			Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%Y for debug
			i = i + 1;
		end
		n = n-1;
	end


for h_index = 1:1:4
	Local_GasHoldUp_X_sorted = sortrows(Local_GasHoldUp_X(:,:,h_index),1);
	x_index = size(Local_GasHoldUp_X_sorted);
	F_sum = 0;
	V_sum = 1e-14;
	i = 1;
	m = -0.035;
	x_i = 1;
	while x_i < x_index(1,1)
		if(Local_GasHoldUp_X_sorted(x_i,1) >= m && Local_GasHoldUp_X_sorted(x_i,1) < m+0.005)
			F_sum = Local_GasHoldUp_X_sorted(x_i,2)*Local_GasHoldUp_X_sorted(x_i,3) + F_sum;
			V_sum = Local_GasHoldUp_X_sorted(x_i,3) + V_sum;
		else
			X_Ave_localGasHoldup(i,1,h_index) = m+0.0025;
			X_Ave_localGasHoldup(i,2,h_index) = F_sum/V_sum;
			F_sum = 0;
			V_sum = 1e-14;
			i = i+1;
			m = m+0.005;
			x_i = x_i - 1;
		end
	x_i = x_i + 1;
	end
end

datafilename_str = sprintf('./results_post/X_Ave_localGasHoldup_GSV_%.2fm_per_s.txt',sgv_index*0.01);
writematrix(X_Ave_localGasHoldup,datafilename_str);
str = sprintf('Local Gas Holdup along X, GSV = %.2f m/s',sgv_index*0.01);
figure
plot(X_Ave_localGasHoldup(:,1,1),X_Ave_localGasHoldup(:,2,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(X_Ave_localGasHoldup(:,1,2),X_Ave_localGasHoldup(:,2,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
plot(X_Ave_localGasHoldup(:,1,3),X_Ave_localGasHoldup(:,2,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
plot(X_Ave_localGasHoldup(:,1,4),X_Ave_localGasHoldup(:,2,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
xlabel('X(m)');
ylabel('Local Gas Holdup(-)');
title(str);
ylim([-0.05,0.35])
legend('height = 0.1m','height = 0.3m','height = 0.5m','height = 0.7m','location','best');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
hold off
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


end

% --------------------------------------------------4---------------------------------------------------------%

% overall_liquid_velocity with various GSV

for rd_index = 1:1:2
	for sgv_index = 1:1:4
		data_liq = bin3_data_liq{3,sgv_index,rd_index};
		data_liq_sorted = sortrows(data_liq,2);
		index = 1;
		while data_liq_sorted(index,2) < 0.3
			index = index + 1;
		end
		liq_mean_v(sgv_index,1,rd_index) = sgv_index*0.01;
		liq_mean_v(sgv_index,2,rd_index) = sum(data_liq_sorted(index+1:end,7).*data_liq_sorted(index+1:end,8))/sum(data_liq_sorted(index+1:end,8));
	end
end
figure
plot(liq_mean_v(:,1,1),liq_mean_v(:,2,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(liq_mean_v(:,1,2),liq_mean_v(:,2,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
xlabel('Gas superficial velocity(m/s)');
ylabel('Liquid circulation velocity(m/s)');
title('Overall liquid circulation velocity');
ylim([0.15,0.40]);
legend('Riser','Downcomer','location','best');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
hold off 
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


%--------------------------------------------------5---------------------------------------------------------%
% Local_liquid_velocity along Y


for sgv_index = 1:1:4
	i = 1;
	riser_liq = bin3_data_liq{3,sgv_index,1};
	downcomer_liq = bin3_data_liq{3,sgv_index,2};
	riser_liq_sorted = sortrows(riser_liq,2);
	max_index = size(riser_liq_sorted);
	temp_sum_v = 0;
	count = 1;
	for index = 1:1:max_index(1,1)
		if(index >= 2 && riser_liq_sorted(index,2) ~= riser_liq_sorted(index-1,2))
			Local_liquid_velocity_Y(i,1,sgv_index) = riser_liq_sorted(index-1,2);
			Local_liquid_velocity_Y(i,2,sgv_index) = temp_sum_v/count;
			temp_sum_v = riser_liq_sorted(index,7);
			count = 1;
			i = i + 1;
		end
		temp_sum_v = riser_liq_sorted(index,7) + temp_sum_v;
		count = count + 1;
	end
	Local_liquid_velocity_Y(i,1,sgv_index) = riser_liq_sorted(index-1,2);
	Local_liquid_velocity_Y(i,2,sgv_index) = temp_sum_v/count;
end

for n = 1:1:4
	Local_liquid_velocity_Y(:,:,n) = sortrows(Local_liquid_velocity_Y(:,:,n));
end

figure
plot(Local_liquid_velocity_Y(:,1,1),Local_liquid_velocity_Y(:,2,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(Local_liquid_velocity_Y(:,1,2),Local_liquid_velocity_Y(:,2,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
plot(Local_liquid_velocity_Y(:,1,3),Local_liquid_velocity_Y(:,2,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
plot(Local_liquid_velocity_Y(:,1,4),Local_liquid_velocity_Y(:,2,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
xlabel('Height(m)');
ylabel('Local liquid circulation velocity(m/s)');
title('Local liquid circulation velocity along Y(height)');
xlim([0.1 0.7]);
legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
hold off
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


% --------------------------------------------------6---------------------------------------------------------%
%Local_liquid_velocity along X

for sgv_index = 1:1:4
	riser_liq = bin3_data_liq{3,sgv_index,1};
	riser_liq_Y_sorted = sortrows(riser_liq,2);
	max_index = size(riser_liq_Y_sorted);
	temp = 0;
	height = 0.1;
	h_index = 1;
    n = 1;
    i = 1;
	while n <= max_index(1,1)
		if(riser_liq_Y_sorted(n,2) > 0.1 && riser_liq_Y_sorted(n,2) < 0.7)
			if(riser_liq_Y_sorted(n,2) > height && riser_liq_Y_sorted(n,2) < height + 0.2)
				if( i == 1)
					temp = riser_liq_Y_sorted(n,2);
					Local_liquid_velocity_x(i,1,h_index) = riser_liq_Y_sorted(n,1);
					Local_liquid_velocity_x(i,2,h_index) = riser_liq_Y_sorted(n,7);
					% Local_liquid_velocity_x(i,3,h_index) = riser_liq_Y_sorted(n,2);%for debug
					i = i + 1;
				elseif (riser_liq_Y_sorted(n,2) == temp)
					Local_liquid_velocity_x(i,1,h_index) = riser_liq_Y_sorted(n,1);
					Local_liquid_velocity_x(i,2,h_index) = riser_liq_Y_sorted(n,7);
					% Local_liquid_velocity_x(i,3,h_index) = riser_liq_Y_sorted(n,2);%for debug
					i = i + 1;
					
				end
			else
				height = height + 0.2;
				h_index = h_index + 1;
				i = 1;	
				n = n-1;
			end

		end

	    n = n+1;
	end

	n = n - 1;
	h_index = h_index + 1;
	i = 1;
	temp_last = riser_liq_Y_sorted(n,2);
	while n >= 1
		if(riser_liq_Y_sorted(n,2) == temp_last)
			Local_liquid_velocity_x(i,1,h_index) = riser_liq_Y_sorted(n,1);
			Local_liquid_velocity_x(i,2,h_index) = riser_liq_Y_sorted(n,7);
			i = i + 1;
		end
		n = n - 1;
	end

	for h_index = 1:1:4
		Local_liquid_velocity_x_sorted = sortrows(Local_liquid_velocity_x(:,:,h_index),1);
		x_index = size(Local_liquid_velocity_x_sorted);
		temp_sum = 0;
		count = 1e-14;
		i = 1;
		m = -0.035;
		x_i = 1;
		while x_i < x_index(1,1)
			if (Local_liquid_velocity_x_sorted(x_i,1) >= -0.035 && Local_liquid_velocity_x_sorted(x_i,1) <= 0.035)
				if(Local_liquid_velocity_x_sorted(x_i,1) >= m && Local_liquid_velocity_x_sorted(x_i,1) < m + 0.005)
					temp_sum = Local_liquid_velocity_x_sorted(x_i,2) + temp_sum;
					count = count + 1;
				else
					Local_liquid_velocity_x_Ave(i,1,h_index,sgv_index) = m + 0.0025;
					Local_liquid_velocity_x_Ave(i,2,h_index,sgv_index) = temp_sum/count;
					temp_sum = 0;
					count = 1;
					i = i + 1;
					m = m + 0.005;
					x_i = x_i - 1;
				end
			end
			x_i = x_i + 1;
		end
	end
		% the same in the same pic
	title_str = sprintf('Local liquid circulation velocity along X at GSV=%.2fm/s',sgv_index*0.01);
	figure
	plot(Local_liquid_velocity_x_Ave(:,1,1,sgv_index),Local_liquid_velocity_x_Ave(:,2,1,sgv_index),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
	hold on
	plot(Local_liquid_velocity_x_Ave(:,1,2,sgv_index),Local_liquid_velocity_x_Ave(:,2,2,sgv_index),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
	plot(Local_liquid_velocity_x_Ave(:,1,3,sgv_index),Local_liquid_velocity_x_Ave(:,2,3,sgv_index),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
	plot(Local_liquid_velocity_x_Ave(:,1,4,sgv_index),Local_liquid_velocity_x_Ave(:,2,4,sgv_index),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
	xlabel('X(m)');
	ylabel('Local liquid circulation velocity(m/s)');
	title(title_str);
	ylim([-0.05,0.8]);
	legend('height = 0.1m','height = 0.3m','height = 0.5m','height = 0.7m','location','best');
	box off
	ax2 = axes('Position',get(gca,'Position'),...
	           'XAxisLocation','top',...
	           'YAxisLocation','right',...
	           'Color','none',...
	           'XColor','k','YColor','k');
	set(ax2,'YTick', []);
	set(ax2,'XTick', []);
	box on
	set(gca,'linewidth',1.5);
	hold off
	ax = gca;
	ax.TickDir = 'out';	
	filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
	filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
	saveas(gcf,filename_png_str);
	savefig(filename_str);
	filename_index = filename_index + 1;

end

% %% the same height in the same pic
for h_index = 1:1:4
	title_str = sprintf('Local liquid circulation velocity along X at height=%.1fm',(2*h_index-1)*0.1);
	figure
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,1),Local_liquid_velocity_x_Ave(:,2,h_index,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
	hold on
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,2),Local_liquid_velocity_x_Ave(:,2,h_index,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,3),Local_liquid_velocity_x_Ave(:,2,h_index,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,4),Local_liquid_velocity_x_Ave(:,2,h_index,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
	xlabel('X(m)');
	ylabel('Local liquid circulation velocity(m/s)');
	title(title_str);
	ylim([-0.05,0.8]);
	legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
	box off
	ax2 = axes('Position',get(gca,'Position'),...
	           'XAxisLocation','top',...
	           'YAxisLocation','right',...
	           'Color','none',...
	           'XColor','k','YColor','k');
	set(ax2,'YTick', []);
	set(ax2,'XTick', []);
	box on
	set(gca,'linewidth',1.5);
	hold off
	ax = gca;
	ax.TickDir = 'out';
	filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
	filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
	saveas(gcf,filename_png_str);
	savefig(filename_str);
	filename_index = filename_index + 1;
end


%---------------------------------------------7------------------------------------------%

%% bubble size PDF 
g = 1;
bins = categorical({'0.0114581','0.0088865858','0.0068921905','0.0053453925','0.0041457388','0.0032153205','0.0024937137','0.0019340555','0.0015'});
for sgv_index = 1:1:4
	title_str = sprintf('Bubbles Fraction at GSV = %.2fm/s',sgv_index*0.01);
	riser = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
	riser_Y_sorted = sortrows(riser,1);
	max_index = size(riser_Y_sorted);
	i = 1;
	for index = 1:1:max_index(1,1)
		if(riser_Y_sorted(index,1) >= 0.1 && riser_Y_sorted(index,1) <= 0.7)
			riser_Y_top(i,1) = riser_Y_sorted(index,1);
			riser_Y_top(i,11) = riser_Y_sorted(index,3);
			for j = 2:1:10
				riser_Y_top(i,j) = riser_Y_sorted(index,j+3).*riser_Y_sorted(index,2).*riser_Y_sorted(index,3);
			end
			i = i + 1;
		end
	end
	n = 1;
	for bin_index = 1:1:9
		bin_sum(n,1) = sum(riser_Y_top(:,bin_index+1))/sum(riser_Y_top(:,11));
		n = n+1;
	end
	small_bubble_fraction_withsgv(g,1) = sgv_index*0.01;
	small_bubble_fraction_withsgv(g,2) = sum(bin_sum(2:9,1))/sum(bin_sum(:,1));
	g = g + 1;
figure
bar(bins,bin_sum(:,1),'facecolor','#0593a2','edgecolor','#0593a2');
xlabel('Bubble Diameter (m)');
ylabel('Bubble Fraction (-)');
title(title_str);
ylim([0,0.25]);
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;
end

figure
plot(small_bubble_fraction_withsgv(:,1),small_bubble_fraction_withsgv(:,2),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('GSV(m/s)');
ylabel('Small Bubble Fraction');
title('Small Bubble Fraction with GSV');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;

%%
%-------------------------------------------8--------------------------------------------%

%% mass_transfer

for sgv_index = 1:1:4
	riser_gas = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
	riser_liq = bin3_data_liq{3,sgv_index,1};
	riser_gas_Y_sorted = sortrows(riser_gas,1);
	riser_liq_Y_sorted = sortrows(riser_liq,2);
	[common_i,i_riser_gas,i_riser_liq] = intersect(riser_gas_Y_sorted(:,[14 1 15]),riser_liq_Y_sorted(:,1:3),'rows');
	C0 = 0.4;
	Dl = 1.91e-9;
	l = 1;
	for index = i_riser_gas(:,1)'
		riser_gas_selected(l,:) = riser_gas_Y_sorted(index,:);
		l = l + 1;
	end
	l = 1;
	for index = i_riser_liq(:,1)'
		riser_liq_selected(l,:) = riser_liq_Y_sorted(index,:);
		l = l + 1;
	end
	riser_gas_selected = sortrows(riser_gas_selected,1);
	riser_liq_selected = sortrows(riser_liq_selected,2);
	max_index = size(riser_gas_selected);
	startindex = 1;
	while riser_liq_selected(startindex,2) < 0.1
		startindex = startindex + 1;
	end
	for index = startindex:1:max_index
		v = riser_liq_selected(index,4);
		epsilon = riser_liq_selected(index,6);
		kl = C0*(Dl/v)^(2/3)*(epsilon*v)^(1/4);
		a_intfacial = 6*riser_gas_selected(index,16)*riser_liq_selected(index,5)/riser_gas_selected(index,4);
		riser_kl_kla(index,1) = riser_liq_selected(index,1);
		riser_kl_kla(index,2) = riser_liq_selected(index,2);
		riser_kl_kla(index,3) = kl;
		riser_kl_kla(index,4) = kl*a_intfacial;
		riser_kl_kla(index,5) = a_intfacial;
		riser_kl_kla(index,6) = riser_liq_selected(index,8);
		riser_kl_kla(index,7) = riser_liq_selected(index,7)*riser_gas_selected(index,4)/riser_liq_selected(index,4);
	end
	riser_kl_kla_ave(sgv_index,1) = sgv_index*0.01;
	riser_kl_kla_ave(sgv_index,2) = sum(riser_kl_kla(:,3).*riser_kl_kla(:,6))/sum(riser_kl_kla(:,6));% kl  average with GSV
	riser_kl_kla_ave(sgv_index,3) = sum(riser_kl_kla(:,4).*riser_kl_kla(:,6))/sum(riser_kl_kla(:,6));% kla average with GSV
	riser_kl_kla_ave(sgv_index,4) = sum(riser_kl_kla(:,5).*riser_kl_kla(:,6))/sum(riser_kl_kla(:,6));% a average with GSV
	riser_kl_kla_ave(sgv_index,5) = sum(riser_kl_kla(:,7).*riser_kl_kla(:,6))/sum(riser_kl_kla(:,6));% Re average with GSV
	riser_kl_kla_Y_sorted = sortrows(riser_kl_kla,2);
	max_index = size(riser_kl_kla_Y_sorted);
	temp_kl_sum = 0;
	temp_kla_sum = 0;
	temp_Re_sum = 0;
	count = 1e-14;
	i = 1;
	for index = 1:1:max_index(1,1)
		if (index >= 2 && riser_kl_kla_Y_sorted(index,2) ~= riser_kl_kla_Y_sorted(index-1,2))
			riser_kl_kla_Y_results(i,1,sgv_index) = riser_kl_kla_Y_sorted(index-1,2);
			riser_kl_kla_Y_results(i,2,sgv_index) = temp_kl_sum/count;
			riser_kl_kla_Y_results(i,3,sgv_index) = temp_kla_sum/count;
			riser_kl_kla_Y_results(i,4,sgv_index) = temp_Re_sum/count;
			temp_kl_sum = riser_kl_kla_Y_sorted(index,3);
			temp_kla_sum = riser_kl_kla_Y_sorted(index,4);
			temp_Re_sum = riser_kl_kla_Y_sorted(index,7);
			count = 1;
			i = i + 1;
		end
		temp_kl_sum = riser_kl_kla_Y_sorted(index,3) + temp_kl_sum;
		temp_kla_sum = riser_kl_kla_Y_sorted(index,4) + temp_kla_sum;
		temp_Re_sum = riser_kl_kla_Y_sorted(index,7) + temp_Re_sum;
		count = count + 1;
	end
	riser_kl_kla_Y_results(i,1,sgv_index) = riser_kl_kla_Y_sorted(index,2);
	riser_kl_kla_Y_results(i,2,sgv_index) = temp_kl_sum/count;
	riser_kl_kla_Y_results(i,3,sgv_index) = temp_kla_sum/count;
	riser_kl_kla_Y_results(i,4,sgv_index) = temp_Re_sum/count;

end

figure
plot(riser_kl_kla_ave(:,1),riser_kl_kla_ave(:,2),'s','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Gas Superficial velocity(m/s)');
ylabel('\it k_L \rm(m/s)');
title('k_L with GSV in riser');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;

figure
plot(riser_kl_kla_ave(:,1),riser_kl_kla_ave(:,5),'s','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Gas Superficial velocity(m/s)');
ylabel('Re');
title('Re with GSV in riser');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


figure
plot(riser_kl_kla_ave(:,1),riser_kl_kla_ave(:,3),'s','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Gas Superficial velocity(m/s)');
ylabel('\itk_La \rm(s^{-1})');
title('k_La with GSV in riser');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


figure
plot(riser_kl_kla_ave(:,1),riser_kl_kla_ave(:,4),'s','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Gas Superficial velocity(m/s)');
ylabel('a(m^2/m^3)');
title('a with GSV in riser');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


figure
plot(riser_kl_kla_Y_results(:,1,1),riser_kl_kla_Y_results(:,2,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(riser_kl_kla_Y_results(:,1,2),riser_kl_kla_Y_results(:,2,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
plot(riser_kl_kla_Y_results(:,1,3),riser_kl_kla_Y_results(:,2,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
plot(riser_kl_kla_Y_results(:,1,4),riser_kl_kla_Y_results(:,2,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
xlabel('height(m)');
ylabel('\itk_L\rm(m/s)');
title('k_L with height in riser');
legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
hold off
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;



figure
plot(riser_kl_kla_Y_results(:,1,1),riser_kl_kla_Y_results(:,3,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(riser_kl_kla_Y_results(:,1,2),riser_kl_kla_Y_results(:,3,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
plot(riser_kl_kla_Y_results(:,1,3),riser_kl_kla_Y_results(:,3,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
plot(riser_kl_kla_Y_results(:,1,4),riser_kl_kla_Y_results(:,3,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
xlabel('height(m)');
ylabel('\itk_La\rm(s^{-1})');
title('k_La with height in riser');
legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
hold off
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;

figure
plot(riser_kl_kla_Y_results(:,1,1),riser_kl_kla_Y_results(:,4,1),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
hold on
plot(riser_kl_kla_Y_results(:,1,2),riser_kl_kla_Y_results(:,4,2),'s','linestyle','-','linewidth',3,'Color','#103778','markerfacecolor','#103778');
plot(riser_kl_kla_Y_results(:,1,3),riser_kl_kla_Y_results(:,4,3),'^','linestyle','-','linewidth',3,'Color','#0593a2','markerfacecolor','#0593a2');
plot(riser_kl_kla_Y_results(:,1,4),riser_kl_kla_Y_results(:,4,4),'v','linestyle','-','linewidth',3,'Color','#ff7a48','markerfacecolor','#ff7a48');
xlabel('height(m)');
ylabel('Re');
title('Re with height in riser');
legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s','location','best');
hold off
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


%-----------------------------------------------------9-------------------------------------------------------------------------------------------------------%

% bubble size PDF with various initial bins

g = 1;
bins = categorical({'0.0114581','0.0088865858','0.0068921905','0.0053453925','0.0041457388','0.0032153205','0.0024937137','0.0019340555','0.0015'});
for initial_bin_index = 2:1:5
	title_str = sprintf('Bubbles Fraction at initial bin[%d], GSV = 0.04m/s',initial_bin_index);
	riser = various_bins_gas{initial_bin_index,1};
	riser_Y_sorted = sortrows(riser,1);
	max_index = size(riser_Y_sorted);
	i = 1;
	for index = 1:1:max_index(1,1)
		if(riser_Y_sorted(index,1) >= 0.1 && riser_Y_sorted(index,1) <= 0.7)
			riser_Y_top(i,1) = riser_Y_sorted(index,1);
			riser_Y_top(i,11) = riser_Y_sorted(index,3);
			for j = 2:1:10
				riser_Y_top(i,j) = riser_Y_sorted(index,j+3).*riser_Y_sorted(index,2).*riser_Y_sorted(index,3);
			end
			i = i + 1;
		end
	end
	n = 1;
	for bin_index = 1:1:9
		bin_sum(n,1) = sum(riser_Y_top(:,bin_index+1))/sum(riser_Y_top(:,11));
		n = n+1;
	end
	small_bubble_fraction(g,1) = initial_bin_index;
	small_bubble_fraction(g,2) = sum(bin_sum(2:9,1))/sum(bin_sum(:,1));
	g = g + 1;
figure
bar(bins,bin_sum(:,1),'facecolor','#0593a2','edgecolor','#0593a2');
xlabel('Bubble Diameter (m)');
ylabel('Bubble Fraction (-)');
title(title_str);
ylim([0,0.25]);
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;

end

figure
plot(small_bubble_fraction(:,1),small_bubble_fraction(:,2),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Initial bin index');
xticks([2 3 4 5]);
xticklabels({'bin[2]','bin[3]','bin[4]','bin[5]'});
ylabel('Small Bubble Fraction');
title('Small Bubble Fraction with bins');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


%-------------------------------------------------------------------10--------------------------------------------------%

% overall gas holdup with various initial bins 


i = 1;
for initial_bin_index = 2:1:5
	riser = various_bins_gas{initial_bin_index,1};
	various_bins_res(i,1) = initial_bin_index;
	various_bins_res(i,2) = sum(riser(:,2).*riser(:,3))/sum(riser(:,3));
	i = i + 1;
end
figure
plot(various_bins_res(:,1),various_bins_res(:,2),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Initial bin index');
xticks([2 3 4 5]);
xticklabels({'bin[2]','bin[3]','bin[4]','bin[5]'});
ylabel('Overall Gas Holdup');
title('Overall Gas Holdup with bins');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;


%----------------------------------------------------------------------11-----------------------------------------------------------------------------%

%kla with various initial bins

for initial_bin_index = 2:1:5
	riser_liq = various_bins_liq{initial_bin_index,1};
	riser_gas = various_bins_gas{initial_bin_index,1};
	riser_gas_Y_sorted = sortrows(riser_gas,1);
	riser_liq_Y_sorted = sortrows(riser_liq,2);
	[common_i,i_riser_gas,i_riser_liq] = intersect(riser_gas_Y_sorted(:,[14 1 15]),riser_liq_Y_sorted(:,1:3),'rows');
	C0 = 0.4;
	Dl = 1.91e-9;
	l = 1;
	for index = i_riser_gas(:,1)'
		riser_gas_selected(l,:) = riser_gas_Y_sorted(index,:);
		l = l + 1;
	end
	l = 1;
	for index = i_riser_liq(:,1)'
		riser_liq_selected(l,:) = riser_liq_Y_sorted(index,:);
		l = l + 1;
	end
	riser_gas_selected = sortrows(riser_gas_selected,1);
	riser_liq_selected = sortrows(riser_liq_selected,2);
	kla = C0.*(Dl./riser_liq_selected(:,4)).^(2/3).*(riser_liq_selected(:,6).*riser_liq_selected(:,4)).^(1/4).*6.*riser_gas_selected(:,16).*riser_liq_selected(:,5)./riser_gas_selected(:,4);
	kla(:,2) = riser_liq_selected(:,8);
	kla_ave(initial_bin_index-1,1) = initial_bin_index;
	kla_ave(initial_bin_index-1,2) = sum(kla(:,1).*kla(:,2))/sum(kla(:,2));

end

figure
plot(kla_ave(:,1),kla_ave(:,2),'o','linestyle','-','linewidth',3,'Color','#151f30','markerfacecolor','#151f30');
xlabel('Initial bin index');
xticks([2 3 4 5]);
xticklabels({'bin[2]','bin[3]','bin[4]','bin[5]'});
ylabel('Overall \it k_La \rm(s^{-1})');
title('Overall \it k_La \rmwith bins');
box off
ax2 = axes('Position',get(gca,'Position'),...
           'XAxisLocation','top',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
set(ax2,'YTick', []);
set(ax2,'XTick', []);
box on
set(gca,'linewidth',1.5);
filename_str = sprintf('J:/RESULTS/results_fig/%d.fig',filename_index);
filename_png_str = sprintf('J:/RESULTS/results_fig_png/%d.png',filename_index);
saveas(gcf,filename_png_str);
savefig(filename_str);
filename_index = filename_index + 1;
