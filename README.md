# How to create a gpu environment on Docker run on VSCode
## Requirements
- Docker
- docker-compose
- gpu(nvidia)
## procedure
1. Run `git clone git@github.com:spec2/DockerPytorchGPUVSCode.git` on your environment.
2. Please change `volumes` of `docker-compose.yml` to match your environment.
3. Open the folder in VSCode.
4. Press `Ctrl+Shift+P` and input `Dev containers: Open FOlder in Container`
5. To check the procedure, run following commands.
   1. `python`
   2. `import pytorch`
   3. `print(torch.cuda.get_device_name())`
6. I would recommend doing install ing a VSCode extension called `Python` to use `.ipynb` files.
7. (if you want to rebuild the docker image, press `Ctrl+Shift+P` and input `Dev Containers: Rebuild Container`)
