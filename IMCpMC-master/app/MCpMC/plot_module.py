import numpy as np
import sympy
from math import sqrt
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.colors as colors
import matplotlib.cm as cmx
import base64
from io import BytesIO
# from sympy.abc import p,q

def plot_module(pmc, estimated_reward, estimated_variance, num_of_run):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    f = sympy.lambdify(pmc.param, estimated_reward)
    fv = np.vectorize(f)
    v = sympy.lambdify(pmc.param, estimated_variance)
    vv = np.vectorize(v)
    # x = np.arange(0.15, 0.55, 0.005)
    # y = np.arange(0.15, 0.55, 0.005)
    x = np.arange(0, 1, 0.005)
    y = np.arange(0, 1, 0.005)
    # X, Y = np.meshgrid(x, y)
    Xx, Yy = np.meshgrid(x, y)
    X = np.where(Xx + Yy < 1, Xx, 0)
    Y = np.where(Xx + Yy < 1, Yy, 0)
    Z = fv(X, Y)
    C = 2*1.96*vv(X, Y)/sqrt(num_of_run)
    plot = ax.scatter(X, Y, Z, c=C.ravel())
    ax.set_xlabel(str(pmc.param[0]))
    ax.set_ylabel(str(pmc.param[1]))
    ax.set_zlabel('Expected value')
    cb = plt.colorbar(plot)
    cb.set_label("CI width")

    ''' ax = fig.add_subplot(212, projection='3d')
    ax.plot_wireframe(X, Y, ff)

    ax = fig.add_subplot(313, projection='3d')
    ax.plot_wireframe(X, Y, C)'''
    figfile = BytesIO()
    plt.savefig(figfile, format='png')
    figfile.seek(0)
    figdata_png = base64.b64encode(figfile.getvalue())
    # plt.show()
    fig.savefig('thisUNIV.png')
    return figdata_png
