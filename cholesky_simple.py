from pymonik import Pymonik, task
from jax import numpy as jnp

@task
def cholesky(A):
    return jnp.linalg.cholesky(A)

if __name__ == "__main__":
    x = jnp.array([[2., 1.],[1., 2.]])
    with Pymonik(endpoint="localhost:5001", partition="pymonik", environment={"pip":["jax"]}):
        L = cholesky.invoke(x).wait().get()
        print(jnp.allclose(x, L @ L.T))