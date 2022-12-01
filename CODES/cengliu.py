from numpy import *
from numpy.linalg import *
import matplotlib.pyplot as plt
from matplotlib import cm
import csv

nx = 1000
ny = 40
u0 = 0.2
dx = 1.0
dy = dx 
dt = 1.0
maxIter = 40000
q = 9
rhoo = 5.0
niu = 0.02
omega = 1.0/(3. * niu + 0.5)

c = array([[0,0],[1,0],[0,1],[-1,0],[0,-1],[1,1],[-1,1],[-1,-1],[1,-1]])
w = 1./36. * ones(q)
w[asarray([norm(ci)<1.1 for ci in c])] = 1./9.; w[0] = 4./9.


def collision(f,u):
    cu1 = 3./2.*(u[0]**2+u[1]**2)
    feq = zeros((q,nx,ny))
    for k in range(q): 
    	cu2 = 3.0 * (c[k][0] * u[0,:,:]+c[k][1] * u[1,:,:])
    	feq[k,:,:] = rho*w[k]*(1.+cu2+0.5*cu2**2-cu1)
    	f[k,:,:] = omega*feq[k,:,:]+(1-omega)*f[k,:,:]
    return f

def streaming(f):
	for j in range(ny):
		for i in range(nx-1,-1,-1):
			f[1,i,j] = f[1,i-1,j]
		for i in range(nx-1):
			f[3,i,j] = f[3,i+1,j]
	for j in range(ny-1,-1,-1):
		for i in range(nx):
			f[2,i,j] = f[2,i,j-1]
		for i in range(nx-1,-1,-1):
			f[5,i,j] = f[5,i-1,j-1]
		for i in range(nx-1):
			f[6,i,j] = f[6,i+1,j-1]
	for j in range(ny-1):
		for i in range(nx):
			f[4,i,j] = f[4,i,j+1]
		for i in range(nx):
			f[8,i,j] = f[8,i-1,j+1]
		for i in range(nx-1):
			f[7,i,j] = f[7,i+1,j+1]
	return f


def sfbound(f):
	# N-boundary:
	f[4,:,ny-1] = f[2,:,ny-1]
	f[8,:,ny-1] = f[6,:,ny-1]
	f[7,:,ny-1] = f[5,:,ny-1]
	# south-boundary:
	f[5,:,0] = f[7,:,0]
	f[2,:,0] = f[4,:,0]
	f[6,:,0] = f[8,:,0]
	# east-boundary:
	f[6,nx-1,:] = 2*f[6,nx-2,:]-f[6,nx-3,:]
	f[3,nx-1,:] = 2*f[3,nx-2,:]-f[3,nx-3,:]
	f[7,nx-1,:] = 2*f[7,nx-2,:]-f[7,nx-3,:]
	# W-boundary:
	rhow = (f[0,0,:]+f[1,0,:]+f[3,0,:]+2.*(f[2,0,:]+f[5,0,:]+f[6,0,:]))/(1-u0)
	f[1,0,:] = f[3,0,:]+ 2*rhow*u0/3
	f[5,0,:] = f[7,0,:] + rhow*u0/6.0
	f[8,0,:] = f[6,0,:] + rhow*u0/6.0
	return f


vel = fromfunction(lambda d,x,y: d*0,(2,nx,ny))
for j in range(ny):
	vel[0,0,j] = u0

fb = zeros((q,nx,ny))
# cu1 = 3./2.*(vel[0]**2+vel[1]**2)
# feq = zeros((q,nx,ny))
# for k in range(q): 
# 	cu2 = 3.0 * (c[k][0] * vel[0,:,:]+c[k][1] * vel[1,:,:])
# 	fb[k,:,:] = rho*w[k]*(1.+cu2+0.5*cu2**2-cu1)

rho = full((nx,ny),rhoo)

ii = 1
while(ii <= 10000):
	fcol = collision(fb,vel)
	fstr = streaming(fcol)
	fb = sfbound(fstr)
	ii = ii + 1
	print(ii)
f = fb.copy()

for i in range(nx):
	for j in range(ny):
		rho[i,j] = sum(f[:,i,j])
rho[:,ny-1] = f[0,:,ny-1]+f[1,:,ny-1]+f[3,:,ny-1]+2.*(f[2,:,ny-1]+f[6,:,ny-1]+f[5,:,ny-1])
rhou_sum  = zeros((q,2,nx,ny))
for k in range(q):
	rhou_sum[k,0,:,:] = f[k,:,:] * c[k][0]
	rhou_sum[k,1,:,:] = f[k,:,:] * c[k][1]
u = zeros((2,nx,ny))
u[0,:,:] = sum(rhou_sum[:,0,:,:],axis = 0)/rho[:,:]
u[1,:,:] = sum(rhou_sum[:,1,:,:],axis = 0)/rho[:,:]

velocity = zeros((2,ny,nx))
velocity[0,:,:] = flip(u[0,:,:],axis=1).T
velocity[1,:,:] = flip(u[1,:,:],axis=1).T

with open('test_cengliu_10000_x.csv', 'w', newline = '') as fpx:
	writer = csv.writer(fpx)
	writer.writerows(velocity[0,:,:])
with open('test_cengliu_10000_y.csv', 'w', newline = '') as fpy:
	writer = csv.writer(fpy)
	writer.writerows(velocity[1,:,:])

fig = plt.figure()
ax = fig.add_subplot()
ax2 = fig.add_subplot()
x = arange(0,nx)
y = arange(0,ny)
levels = arange(0.,0.2,0.005)
ax.streamplot(x,y,flip(velocity[0,:,:],axis=0),flip(velocity[1,:,:],axis=0),density=1.5, arrowstyle='-', linewidth = 1)
ax2.contourf(x, y, sqrt(velocity[0,:,:]**2+velocity[1,:,:]), levels,cmap=cm.jet)
plt.show()




