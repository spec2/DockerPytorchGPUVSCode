# How to create a gpu environment on Docker run on VSCode
## Requirements
- Docker
- docker-compose
- gpu(nvidia)
## procedure
1. Run `git clone git@github.com:spec2/DockerPytorchGPUVSCode.git` on your environment.
2. Please change `volumes` of `docker-compose.yml` to match your environment.
3. If proxy is not used, delete a proxy setting(`--proxy=http://192.168.0.15:3128 `) from the `Dockerfile`
4. Open the folder in VSCode.
5. Press `Ctrl+Shift+P` and input `Dev containers: Open FOlder in Container`
6. To check the procedure, run following commands.
   1. `python`
   2. `import pytorch`
   3. `print(torch.cuda.get_device_name())`
7. I would recommend doing install ing a VSCode extension called `Python` to use `.ipynb` files.
8. (if you want to rebuild the docker image, press `Ctrl+Shift+P` and input `Dev Containers: Rebuild Container`)
