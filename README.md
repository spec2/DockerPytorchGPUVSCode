# How to create a gpu environment on Docker run on VSCode
## Requirements
- Docker
- docker-compose
- gpu(nvidia)
- NVIDIA Container Toolkit
- NVIDIA Driver & CUDA
## procedure
1. Run `git clone git@github.com:spec2/DockerPytorchGPUVSCode.git` on your environment.
2. Please change `volumes` of `docker-compose.yml` to match your environment.
3. Open the folder in VSCode.
4. Press `Ctrl+Shift+P` and input `Dev containers: Open Folder in Container`
5. To check the procedure, run following commands.
   1. `python`
   2. `import torch`
   3. `print(torch.cuda.get_device_name())`
6. I would recommend doing installation of a VSCode extension called `Python` to handle `.ipynb` files.
7. (If you want to rebuild the docker image, press `Ctrl+Shift+P` and input `Dev Containers: Rebuild Container`)

## Option
### Turn on GPU access with Docker Compose
GPUs are referenced in a `compose.yml` file using the [device](compose-file/deploy.md#devices) attribute from the Compose Deploy specification, within your services that need them. 

This provides more granular control over a GPU reservation as custom values can be set for the following device properties: 

- `capabilities`. This value specifies as a list of strings (eg. `capabilities: [gpu]`). You must set this field in the Compose file. Otherwise, it returns an error on service deployment.
- `count`. This value, specified as an integer or the value `all`, represents the number of GPU devices that should be reserved (providing the host holds that number of GPUs). If `count` is set to `all` or not specified, all GPUs available on the host are used by default.
- `device_ids`. This value, specified as a list of strings, represents GPU device IDs from the host. You can find the device ID in the output of `nvidia-smi` on the host. If no `device_ids` are set, all GPUs available on the host are used by default.
- `driver`. This value is specified as a string, for example `driver: 'nvidia'`
- `options`. Key-value pairs representing driver specific options.  
Detail: [Turn on GPU access with Docker Compose](https://docs.docker.com/compose/gpu-support/)

