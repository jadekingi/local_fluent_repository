#include"stdio.h"
#include"udf.h"
#include"sg_pb.h"


DEFINE_ON_DEMAND(data_get)
{
	Domain *dg, *dl;
	Thread *t;
	cell_t c;

	real dia_gas_riser, volume_fraction_gas_riser,cell_volume_riser;
	real dia_gas_downcomer, volume_fraction_gas_downcomer, cell_volume_downcomer;
	real time,tt;
	real cell_volume_liq_riser,cell_volume_liq_downcomer;

	int i,j;

	real x[ND_ND], f_f_riser[10], f_s_riser[10];
	real vof_gas, vof_liq;
	real rho,mu,v,epsilon;
	real velocity_u, velocity_v, velocity_w, velocity;

	char a1[80], a2[80],b1[80], b2[80];

	FILE *f_RISER, *f_DOWNCOMER;

	dl = Get_Domain(2);
	dg = Get_Domain(3);
	time = CURRENT_TIME;
	sprintf(a1, "%.2f", time);
	sprintf(a2, "%.2f", time);
	strcpy(b1, "s_riser.txt");
	strcpy(b2, "s_downcomer.txt");
	strcat(a1, b1);
	strcat(a2, b2);
	f_RISER = fopen(a1, "w");
	f_DOWNCOMER = fopen(a2, "w");
	thread_loop_c(t, dg)
	{
		begin_c_loop(c, t)
		{
			C_CENTROID(x, c, t);
			if(x[1] > 0.1 && x[1] < 0.7)
			{
				if (x[0] <0.035 && x[0] > -0.035)
				{
					volume_fraction_gas_riser =MAX(1e-9,C_VOF(c, t));
					dia_gas_riser = MAX(C_PHASE_DIAMETER(c, t), 1e-9);
					cell_volume_riser = MAX(C_VOLUME(c, t),1e-9);
					vof_gas = C_VOF(c,t);
					for (i = 0; i <= 8; i++)
					{
						f_f_riser[i] = MAX(C_PB_DISCI(c, t, i),1e-9);
					}
					fprintf(f_RISER, "%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e\n", x[1],volume_fraction_gas_riser, cell_volume_riser, dia_gas_riser,f_f_riser[0], f_f_riser[1], f_f_riser[2], f_f_riser[3], f_f_riser[4], f_f_riser[5], f_f_riser[6], f_f_riser[7], f_f_riser[8],x[0],x[2],vof_gas);
				}
				else
					{
						volume_fraction_gas_downcomer = MAX(1e-9,C_VOF(c, t));
						cell_volume_downcomer = C_VOLUME(c, t);
						vof_gas = C_VOF(c,t);
						fprintf(f_DOWNCOMER, "%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e, \n", x[1],volume_fraction_gas_downcomer, cell_volume_downcomer,x[0],x[2],vof_gas); 
					}
			}
		}
		end_c_loop(c, t)
	}
	fclose(f_RISER);
	fclose(f_DOWNCOMER);

	FILE *f_RISER_liq, *f_DOWNCOMER_liq;
	char a3[80], a4[80],b3[80], b4[80];

	sprintf(a3, "%.2f", time);
	sprintf(a4, "%.2f", time);
	strcpy(b3, "s_riser_liq.txt");
	strcpy(b4, "s_downcomer_liq.txt");
	strcat(a3, b3);
	strcat(a4, b4);
	f_RISER_liq = fopen(a3, "w");
	f_DOWNCOMER_liq = fopen(a4, "w");

	thread_loop_c(t,dl)
	{
		begin_c_loop(c,t)
		{
			C_CENTROID(x,c,t);
			if(x[1] > 0.1 && x[1] < 0.7)
			{
				if (x[0] <0.035 && x[0] > -0.035)
				{
					rho = C_R(c,t);
					mu = C_MU_L(c,t);
					v = mu/rho;
					vof_liq = C_VOF(c,t);
					epsilon = C_D(c,t);
					velocity_u = C_U(c,t);
					velocity_v = C_V(c,t);
					velocity_w = C_W(c,t);
					cell_volume_liq_riser = C_VOLUME(c, t);
					velocity = sqrt(velocity_w*velocity_w + velocity_v*velocity_v + velocity_u*velocity_u);
					fprintf(f_RISER_liq,"%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e, \n",x[0],x[1],x[2],v,vof_liq,epsilon,velocity,cell_volume_liq_riser);
				}
				else
				{
					rho = C_R(c,t);
					mu = C_MU_L(c,t);
					v = mu/rho;
					vof_liq = C_VOF(c,t);
					epsilon = C_D(c,t);
					velocity_u = C_U(c,t);
					velocity_v = C_V(c,t);
					velocity_w = C_W(c,t);
					cell_volume_liq_downcomer = C_VOLUME(c, t); 
					velocity = sqrt(velocity_w*velocity_w + velocity_v*velocity_v + velocity_u*velocity_u);
					fprintf(f_DOWNCOMER_liq, "%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e,%15.5e, \n", x[0], x[1], x[2], v, vof_liq, epsilon, velocity, cell_volume_liq_downcomer);
				}
			}
		}
		end_c_loop(c, t)
	}
	fclose(f_RISER_liq);
	fclose(f_DOWNCOMER_liq);
}

/*

----------------GAS-----------------------------------
riser:

1 |            2              |           3       |       4        |  5-13  | 14 | 15 |   16
Y | volume_fraction_gas_riser | cell_volume_riser | dia_gas_riser  |  bin   | X  |  Z | vof_gas

downcomer:

1 |          2                   |             3           | 4 | 5 |   6    |
Y |volume_fraction_gas_downcomer | cell_volume_downcomer   | X | Z | vof_gas|

----------------LIQUID--------------

riser_liq:

1 | 2 | 3 | 4 |    5    |    6    |       7     |           8            |
X | Y | Z | v | vof_liq | epsilon |   velocity  | cell_volume_liq_riser  |
  
downcomer_liq:  
  
1 | 2 | 3 | 4 |    5    |    6    |       7     |               8            |
X | Y | Z | v | vof_liq | epsilon |   velocity  | cell_volume_liq_downcomer  |


*/