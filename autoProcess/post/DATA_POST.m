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


%---------------------------------------1-----------------------------------------------%

%    Overall_GasHoldUp_Average

% u = 1;
% for sgv_index = 1:1:4
% 	max_index = 4;
% 	for time_index= 1:1:max_index
% 		riser = bin3_data_GasHoldUp_Bins{time_index,sgv_index,1};
% 		downcomer = bin3_data_GasHoldUp_Bins{time_index,sgv_index,2};
% 		index_riser = size(riser);
% 		index_downcomer = size(downcomer);
% 		F_riser_sum = 0;
% 		V_riser_sum = 0;
% 		F_downcomer_sum = 0;
% 		V_downcomer_sum = 0;
% 		for n =1:index_riser(1,1)
% 		    F_riser_sum = F_riser_sum + riser(n,2)*riser(n,3);
% 		    V_riser_sum = V_riser_sum + riser(n,3);
%         end
%         for n = 1:index_downcomer(1,1)
% 		    F_downcomer_sum = F_downcomer_sum + downcomer(n,2)*downcomer(n,3);
% 		    V_downcomer_sum = V_downcomer_sum + downcomer(n,3);
% 		end
        
% 		temp_theSecond_theSGV_Ave(u,1) = time_index;
% 		temp_theSecond_theSGV_Ave(u,2) = F_riser_sum/V_riser_sum;
% 		temp_theSecond_theSGV_Ave(u,3) = F_downcomer_sum/V_downcomer_sum;
%         temp_theSecond_theSGV_Ave(u,4) = sgv_index;
% 		u = u+1;

%     end
% 	theSGV_GH_Ave(sgv_index,1) = mean(temp_theSecond_theSGV_Ave(:,2));
% 	theSGV_GH_Ave(sgv_index,2) = mean(temp_theSecond_theSGV_Ave(:,3));
%     u = 1;

% end

% writematrix(theSGV_GH_Ave,'./results_post/theSGV_GH_Ave.txt');
% sgv = [0.01,0.02,0.03,0.04];
% figure
% plot(sgv,theSGV_GH_Ave(:,1),'Color','#151f30','LineStyle','-','Marker','s','MarkerFaceColor','#151f30');
% xlabel('Gas superficial velocity(m/s)');
% ylabel('Overall Gas Holdup(-)');
% title('Overall gas holdup');
% hold on
% plot(sgv,theSGV_GH_Ave(:,2),'Color','#103778','LineStyle','-','Marker','o','MarkerFaceColor','#103778');
% legend('Riser','Downcomer');
% hold off

% --------------------------------------------------2-----------------------------------------------------------------------------------------%

%Local_GasHoldUp_with_Height

% for sgv_index = 1:1:4
% 	riser = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
% 	riser = sortrows(riser,1);
% 	index = size(riser);
% 	i = 1;
% 	tempsumFrac = 0;
% 	tempsumVol = 0;
% 	for n = 1:index(1,1)
% 		tempsumFrac = tempsumFrac + riser(n,2)*riser(n,3);
% 		tempsumVol = tempsumVol + riser(n,3);
% 		if(n>=2 && riser(n,1) ~= riser(n-1,1))
% 	            tempsumFrac = tempsumFrac - riser(n,2)*riser(n,3);
% 				tempsumVol = tempsumVol - riser(n,3);
% 				Local_GasHoldUp(i,1,sgv_index) = riser(n-1,1);
% 				Local_GasHoldUp(i,2,sgv_index) = tempsumFrac/tempsumVol;
% 				i = i+1;
% 				tempsumFrac = riser(n,2)*riser(n,3);                      
% 				tempsumVol = riser(n,3);
% 		end	
			
% 	end
% 	Local_GasHoldUp(i,1,sgv_index) = riser(n-1,1);
% 	Local_GasHoldUp(i,2,sgv_index) = tempsumFrac/tempsumVol;

% end
% writematrix(Local_GasHoldUp,'./results_post/Local_GasHoldUp.txt');
% figure
% scatter(Local_GasHoldUp(:,1,1),Local_GasHoldUp(:,2,1),15,'filled','MarkerFaceColor','#151f30');
% xlabel('Height(m)');
% ylabel('Local Gas HoldUp(-)');
% title('Local Gas HoldUp with Increasing Height');
% hold on
% scatter(Local_GasHoldUp(:,1,2),Local_GasHoldUp(:,2,2),15,'filled','MarkerFaceColor','#103778');
% scatter(Local_GasHoldUp(:,1,3),Local_GasHoldUp(:,2,3),15,'filled','MarkerFaceColor','#0593a2');
% scatter(Local_GasHoldUp(:,1,4),Local_GasHoldUp(:,2,4),15,'filled','MarkerFaceColor','#ff7a48');
% legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s');
% hold off

% ---------------------------------------------3----------------------------------------------------%


% Local_GasHoldUp_with_X

% for sgv_index = 1:1:4
% 	riser = bin3_data_GasHoldUp_Bins{3,sgv_index,1};
% 	riser = sortrows(riser,1);
% 	index = size(riser);
% 	h_index = 1;
% 	height = 0.1;
% 	i = 1;
%     n = 1;
%     temp = 0;
% 	while n <= index(1,1)
% 		if(0.7 > riser(n,1) > 0.1)
% 			if(riser(n,1) > height && riser(n,1) < height + 0.2)
% 				if( i == 1)
% 					temp = riser(n,1);
% 					Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
% 					Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
% 					Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
% 					% Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%for debug
% 					i = i + 1;
% 				elseif (riser(n,1) == temp)
% 					Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
% 					Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
% 					Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
% 					Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%Y for debug

% 					i = i + 1;
					
% 				end
% 			else
% 				height = height + 0.2;
% 				h_index = h_index + 1;
% 				i = 1;	
% 				n = n-1;
% 			end

% 		end

%         n = n+1;
% 	end
% 	n = n - 1;
% 	h_index = h_index + 1;
% 	temp_last = riser(n,1);
% 	i = 1;
% 	while n >= 1
% 		if(riser(n,1) == temp_last)
% 			Local_GasHoldUp_X(i,1,h_index) = riser(n,14);
% 			Local_GasHoldUp_X(i,2,h_index) = riser(n,2);%volume_fraction_gas_riser
% 			Local_GasHoldUp_X(i,3,h_index) = riser(n,3);%cell_volume_riser
% 			Local_GasHoldUp_X(i,4,h_index) = riser(n,1);%Y for debug
% 			i = i + 1;
% 		end
% 		n = n-1;
% 	end


% for h_index = 1:1:4
% 	Local_GasHoldUp_X_sorted = sortrows(Local_GasHoldUp_X(:,:,h_index),1);
% 	x_index = size(Local_GasHoldUp_X_sorted);
% 	F_sum = 0;
% 	V_sum = 1e-14;
% 	i = 1;
% 	m = -0.035;
% 	x_i = 1;
% 	while x_i < x_index(1,1)
% 		if(Local_GasHoldUp_X_sorted(x_i,1) >= m && Local_GasHoldUp_X_sorted(x_i,1) < m+0.005)
% 			F_sum = Local_GasHoldUp_X_sorted(x_i,2)*Local_GasHoldUp_X_sorted(x_i,3) + F_sum;
% 			V_sum = Local_GasHoldUp_X_sorted(x_i,3) + V_sum;
% 		else
% 			X_Ave_localGasHoldup(i,1,h_index) = m+0.0025;
% 			X_Ave_localGasHoldup(i,2,h_index) = F_sum/V_sum;
% 			F_sum = 0;
% 			V_sum = 1e-14;
% 			i = i+1;
% 			m = m+0.005;
% 			x_i = x_i - 1;
% 		end
% 	x_i = x_i + 1;
% 	end
% end

% datafilename_str = sprintf('./results_post/X_Ave_localGasHoldup_GSV_%.2fm_per_s.txt',sgv_index*0.01);
% writematrix(X_Ave_localGasHoldup,datafilename_str);
% str = sprintf('Local Gas Holdup along X, GSV = %.2f m/s',sgv_index*0.01);
% figure
% plot(X_Ave_localGasHoldup(:,1,1),X_Ave_localGasHoldup(:,2,1),'+','linestyle','-','linewidth',1);
% hold on
% plot(X_Ave_localGasHoldup(:,1,2),X_Ave_localGasHoldup(:,2,2),'*','linestyle','-','linewidth',1);
% plot(X_Ave_localGasHoldup(:,1,3),X_Ave_localGasHoldup(:,2,3),'.','linestyle','-','linewidth',1);
% plot(X_Ave_localGasHoldup(:,1,4),X_Ave_localGasHoldup(:,2,4),'x','linestyle','-','linewidth',1);
% xlabel('X(m)');
% ylabel('Local Gas Holdup(-)');
% title(str);
% legend('height = 0.1m','height = 0.3m','height = 0.5m','height = 0.7m');
% hold off

% end

% --------------------------------------------------4---------------------------------------------------------%

% overall_liquid_velocity with various GSV

% i  = 1;
% for rd_index = 1:1:2
% 	for sgv_index = 1:1:4
% 		data_liq = bin3_data_liq{3,sgv_index,rd_index};
% 		liq_mean_v(i,1,rd_index) = sgv_index*0.01;
% 		liq_mean_v(i,2,rd_index) = mean(data_liq(:,7));
% 		i = i + 1;
% 	end
% 	i = 1;
% end
% figure
% plot(liq_mean_v(:,1,1),liq_mean_v(:,2,1),'*','linestyle','-','linewidth',1,'Color','#151f30');
% hold on
% plot(liq_mean_v(:,1,2),liq_mean_v(:,2,2),'.','linestyle','-','linewidth',1,'Color','#103778');
% xlabel('Gas superficial velocity(m/s)');
% ylabel('Liquid superficial velocity(m/s)');
% title('Overall liquid superficial velocity')
% legend('Riser','Downcomer');
% hold off 

%--------------------------------------------------5---------------------------------------------------------%
% Local_liquid_velocity along Y


% for sgv_index = 1:1:4
% 	i = 1;
% 	riser_liq = bin3_data_liq{3,sgv_index,1};
% 	downcomer_liq = bin3_data_liq{3,sgv_index,2};
% 	riser_liq_sorted = sortrows(riser_liq,2);
% 	max_index = size(riser_liq_sorted);
% 	temp_sum_v = 0;
% 	count = 1;
% 	for index = 1:1:max_index(1,1)
% 		if(index >= 2 && riser_liq_sorted(index,2) ~= riser_liq_sorted(index-1,2))
% 			Local_liquid_velocity_Y(i,1,sgv_index) = riser_liq_sorted(index-1,2);
% 			Local_liquid_velocity_Y(i,2,sgv_index) = temp_sum_v/count;
% 			temp_sum_v = riser_liq_sorted(index,7);
% 			count = 1;
% 			i = i + 1;
% 		end
% 		temp_sum_v = riser_liq_sorted(index,7) + temp_sum_v;
% 		count = count + 1;
% 	end
% 	Local_liquid_velocity_Y(i,1,sgv_index) = riser_liq_sorted(index-1,2);
% 	Local_liquid_velocity_Y(i,2,sgv_index) = temp_sum_v/count;
% end

% for n = 1:1:4
% 	Local_liquid_velocity_Y(:,:,n) = sortrows(Local_liquid_velocity_Y(:,:,n));
% end

% figure
% plot(Local_liquid_velocity_Y(:,1,1),Local_liquid_velocity_Y(:,2,1),'*','linestyle','-','linewidth',1,'Color','#151f30');
% hold on
% plot(Local_liquid_velocity_Y(:,1,2),Local_liquid_velocity_Y(:,2,2),'.','linestyle','-','linewidth',1,'Color','#103778');
% plot(Local_liquid_velocity_Y(:,1,3),Local_liquid_velocity_Y(:,2,3),'+','linestyle','-','linewidth',1,'Color','#0593a2');
% plot(Local_liquid_velocity_Y(:,1,4),Local_liquid_velocity_Y(:,2,4),'x','linestyle','-','linewidth',1,'Color','#ff7a48');
% xlabel('Height(m)');
% ylabel('Local superficial velocity(m/s)');
% title('Local superficial velocity along Y(height)');
% xlim([0.1 0.7]);
% legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s');
% hold off

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
	title_str = sprintf('Local superifcial velocity along X at GSV=%.2fm/s',sgv_index*0.01);
	figure
	plot(Local_liquid_velocity_x_Ave(:,1,1,sgv_index),Local_liquid_velocity_x_Ave(:,2,1,sgv_index),'*','linestyle','-','linewidth',1,'Color','#151f30');
	hold on
	plot(Local_liquid_velocity_x_Ave(:,1,2,sgv_index),Local_liquid_velocity_x_Ave(:,2,2,sgv_index),'.','linestyle','-','linewidth',1,'Color','#103778');
	plot(Local_liquid_velocity_x_Ave(:,1,3,sgv_index),Local_liquid_velocity_x_Ave(:,2,3,sgv_index),'+','linestyle','-','linewidth',1,'Color','#0593a2');
	plot(Local_liquid_velocity_x_Ave(:,1,4,sgv_index),Local_liquid_velocity_x_Ave(:,2,4,sgv_index),'x','linestyle','-','linewidth',1,'Color','#ff7a48');
	xlabel('X(m)');
	ylabel('Local superifcial velocity(m/s)');
	title(title_str);
	legend('height = 0.01m','height = 0.03m','height = 0.05m','height = 0.07m');
	hold off
	ax = gca;
	ax.TickDir = 'out';	
end

%% the same height in the same pic
for h_index = 1:1:4
	title_str = sprintf('Local superifcial velocity along X at height=%.1fm',(2*h_index-1)*0.1);
	figure
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,1),Local_liquid_velocity_x_Ave(:,2,h_index,1),'*','linestyle','-','linewidth',1,'Color','#151f30');
	hold on
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,2),Local_liquid_velocity_x_Ave(:,2,h_index,2),'.','linestyle','-','linewidth',1,'Color','#103778');
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,3),Local_liquid_velocity_x_Ave(:,2,h_index,3),'+','linestyle','-','linewidth',1,'Color','#0593a2');
	plot(Local_liquid_velocity_x_Ave(:,1,h_index,4),Local_liquid_velocity_x_Ave(:,2,h_index,4),'x','linestyle','-','linewidth',1,'Color','#ff7a48');
	xlabel('X(m)');
	ylabel('Local superifcial velocity(m/s)');
	title(title_str);
	legend('GSV = 0.01m/s','GSV = 0.02m/s','GSV = 0.03m/s','GSV = 0.04m/s');
	hold off
	ax = gca;
	ax.TickDir = 'out';
end