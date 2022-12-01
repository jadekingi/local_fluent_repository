
import matplotlib.pyplot as plt
import numpy as np
import math
from matplotlib import cm
from scipy import interpolate
#函数变量Coordx,Coordy，Strain为绘制云图的初始数据，分别为X,Y坐标以及坐标处对应的值。
#minX,maxX,minY,maxY为二维云图绘制的坐标范围，figName为图名。
def plot_contour(Coordx,Coordy,Strain,minX,maxX,minY,maxY,figName):

    X = np.linspace(minX, maxX, 1000)
    Y = np.linspace(minY, maxY, 1000)
    #生成二维数据坐标点，可以想象成围棋棋盘上的一个个落子点
    X1, Y1 = np.meshgrid(X, Y)
    #通过griddata函数插值得到所有的(X1, Y1)处对应的值，原始数据为Coordx, Coordy, Strain
    Z = interpolate.griddata((Coordx, Coordy), Strain, (X1, Y1), method='cubic')
  
    fig, ax = plt.subplots(figName, figsize=(12, 8))

    #level设置云图颜色范围以及颜色梯度划分，只能显示0-601范围数值，每间隔20颜色变化
    levels = range(0,601,20) 
    cset1 = ax.contourf(X1, Y1, Z, levels,cmap=cm.jet) 
    #设置cmap为jet，最小值为蓝色，最大为红色，和有限元软件云图配色类似
   
    #设置图片在屏幕中出现的位置
    mngr = plt.get_current_fig_manager()
    mngr.window.wm_geometry("+350+50")

    ax.set_title( figName,size=20)  #设置图名
    #设置云图坐标范围以及坐标轴标签
    ax.set_xlim(minX, maxX)
    ax.set_ylim(minY, maxY)
    ax.set_xlabel("X(mm)",size=15)
    ax.set_ylabel("Y(mm)",size=15)

    #设置colorbar的刻度，标签
    cbar = fig.colorbar(cset1)
    cbar.set_label('strain(με)', size=18)
    cbar.set_ticks([0,100,200,300,400,500,600])
   
   
    #保存图片，bbox_inches设置图片周边空白的大小
    fig.savefig(figName+".png", bbox_inches='tight',dpi=150,pad_inches=0.1)
    plt.show()  #是否显示图片
 
    return()