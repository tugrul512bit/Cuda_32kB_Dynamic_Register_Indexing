# Cuda_32kB_Dynamic_Register_Indexing
Seamless access to all private registers of warp, from main thread of the warp.

Each CUDA pipeline can only access 255 32-bit registers. ```WarpRegisterArray<size>``` let enables seamless access to 8160 registers from 32 lanes of warp, for only main thread (threadIdx.x=0). 

```C++

__global__ void dynamicRegisterIndexing(int* result, int start, int stop)
{
    WarpRegisterArray<5000> arr;
    int sum = 0;

    for (int i = start; i < stop; i++)
        arr.set(1, i);

    for (int i = start; i < stop; i++)
    {
        auto data = arr.get(i);
        sum += data;
    }

    if (threadIdx.x == 0)
        result[0] = sum;
}


int main()
{
    int* data;
    cudaMallocManaged(&data, sizeof(int));
    int start, stop;
    std::cin >> start;
    std::cin >> stop;
    for (int i = 0; i < 10; i++)
    {
        dynamicRegisterIndexing <<<1, 32 >>> (data, start, stop);
        cudaDeviceSynchronize();
    }
    std::cout << "sum  = " << *data << std::endl;
    cudaFree(data);
    return 0;
}
```

output:

```
0
5000
sum  = 5000
```
