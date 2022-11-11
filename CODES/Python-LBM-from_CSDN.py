#-- coding:UTF-8 --
# 2D flow around a cylinder
from numpy import *
from numpy.linalg import *
import matplotlib.pyplot as plt; from matplotlib import cm
###### Flow definition #########################################################
maxIter = 200000 # Total number of time iterations.
Re      = 220.0  # Reynolds number.
nx = 520; ny = 180; ly=ny-1.0; q = 9 # Lattice dimensions and populations.
cx = nx/4; cy=ny/2; r=ny/9;          # Coordinates of the cylinder.
uLB     = 0.04                       # Velocity in lattice units.
nulb    = uLB*r/Re; omega = 1.0 / (3.*nulb+0.5); # Relaxation parameter.
 
###### Lattice Constants #######################################################
c = array([(x,y) for x in [0,-1,1] for y in [0,-1,1]]) # Lattice velocities.
t = 1./36. * ones(q)                                   # Lattice weights.
t[asarray([norm(ci)<1.1 for ci in c])] = 1./9.; t[0] = 4./9.
noslip = [c.tolist().index((-c[i]).tolist()) for i in range(q)] 
i1 = arange(q)[asarray([ci[0]<0  for ci in c])] # Unknown on right wall.
i2 = arange(q)[asarray([ci[0]==0 for ci in c])] # Vertical middle.
i3 = arange(q)[asarray([ci[0]>0  for ci in c])] # Unknown on left wall.
 
###### Function Definitions ####################################################
sumpop = lambda fin: sum(fin,axis=0) # Helper function for density computation.axis=0：每一行相加
def equilibrium(rho,u):              # Equilibrium distribution function.
    cu   = 3.0 * dot(c,u.transpose(1,0,2))
    usqr = 3./2.*(u[0]**2+u[1]**2)
    feq = zeros((q,nx,ny))
    for i in range(q): feq[i,:,:] = rho*t[i]*(1.+cu[i]+0.5*cu[i]**2-usqr)
    return feq
 
###### Setup: cylindrical obstacle and velocity inlet with perturbation ########
obstacle = fromfunction(lambda x,y: (x-cx)**2+(y-cy)**2<r**2, (nx,ny))
 
#vel用于初始化速度，d的取值是0，1，代表x方向和y方向，ulb后面的代表微小偏量####
#其实直接全部赋值0.04也没关系
#vel = fromfunction(lambda d,x,y: (1-d)*uLB*(1.0+1e-4*sin(y/ly*2*pi)),(2,nx,ny))
vel = fromfunction(lambda d,x,y: (1-d)*uLB,(2,nx,ny))
 
feq = equilibrium(1.0,vel); fin = feq.copy()
 
w=zeros((9,nx,ny))
w[:,obstacle]=1
 
 
###### Main time loop ##########################################################
for time in range(maxIter):
    
    fin[i1,-1,:] = fin[i1,-2,:] #出口边界条件，充分发展的流动格式即出口未知的分布函数与上一个节点相同
    
    rho = sumpop(fin)           #计算宏观密度
    
    u = dot(c.transpose(), fin.transpose((1,0,2)))/rho  #
 
    u[:,0,:] =vel[:,0,:] # 
    rho[0,:] = 1./(1.-u[0,0,:]) * (sumpop(fin[i2,0,:])+2.*sumpop(fin[i1,0,:]))
 
    feq = equilibrium(rho,u) # 
    fin[i3,0,:] = fin[i1,0,:] + feq[i3,0,:] - fin[i1,0,:]
    fout = fin - omega * (fin - feq)  # 碰撞过程
    
    for i in range(q): fout[i,obstacle] = fin[noslip[i],obstacle]
    
    for i in range(q): #扩散过程
        
        fin[i,:,:] = roll(roll(fout[i,:,:],c[i,0],axis=0),c[i,1],axis=1)
    
    if (time%2000==0): # Visualization
 
        fd=0
        ff=0
 
        for i in range(q):
 
            for x in range(100,170,1): 
 
                for y in range(50,130,1):
 
                    if obstacle[x,y]:
 
                        x1=x+c[i,0]
                        y1=y+c[i,1]
 
                        if not obstacle[x1,y1]:
 
                            fd+=c[i,0]*(fout[i,x,y]+fout[noslip[i],x1,y1])
                            ff+=c[i,1]*(fout[i,x,y]+fout[noslip[i],x1,y1])
 
 
        fd_1=abs(2*fd/(r*0.04**2))
        ff_1=abs(2*ff/(r*0.04**2))
 
        print(fd_1)
        print(ff_1)
            
    plt.clf(); plt.imshow(sqrt(u[0]**2+u[1]**2).transpose(),cmap=cm.Reds)
    plt.savefig("vel."+str(time/10000).zfill(4)+".png")