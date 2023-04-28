- [[EN]](#item1)
- [[ES]](#item2)

<a id="item1"></a>
In short, these files allow you to create a virtual private network (VPC) on Google Cloud Platform and deploy a Cloud Run service within it, ensuring traffic egress via a static IP address.

The ```main.tf``` file defines the resources needed to create the VPC and connect it to the Cloud Run service. A static IP address is also created and a NAT Gateway is programmed to allow outbound traffic from the service to pass through the static IP address.

The ```variables.tf``` file contains all the variables used in the main.tf file. You can modify these values to adjust your VPC and Cloud Run service settings.

The ```values.auto.tfvars``` file is the configuration settings file specific to your environment. This is where you add values specific to your project, such as the VPC name, region, Docker image URL, and other values needed to create the resources.

To run this code, you must have Terraform installed and set up your Google Cloud Platform account. Then, you must execute the following commands in the terminal, inside the directory where the files are located:

```terraform init```
This command initializes Terraform and downloads the necessary providers.

```terraform plan```
This command displays the changes that will be made to your infrastructure. Be sure to review these changes before running the following command.

```terraform apply```
This command applies the changes to your infrastructure. Make sure your variable values are set correctly before running this command.

Before you run this code, it's important to consider billing and security considerations. Make sure you understand the costs associated with creating these resources and follow security best practices when setting up your VPC and Cloud Run service.

[![](https://mermaid.ink/img/pako:eNqNk1tvgjAYhv9K0-u5H8DFEgVPO3gAtxswpCufyISW9KAx6n9fQdBhHJEL0rTP833t2_SAKY8AWzgWJF-jhRMwZL6un5GEPavVEnU6L8dPCfKIen7MeZxCSHmWawUhA7XjYoMESK4FhWUl_3HsW0fq7wc0p9ZywX-AqlCC2CYU2px-7WxzGhJKQUrTlTGjc9EmDm73KLj5tyrDW4VEkcFlmzO63yZkRLVp44uWch2FQrP_whjXlskiYOe5XjlnCyDKTL_6XzMbTc75V5bdIN5KwrtcUgU5Dejd98wOQKTFiQu-W6aN7Drtyuo3rI8HrUHDmvh2cW7klmFVyLBEXCiCMMzU9xRRCUXjGeqeL6ICR41aM3_SXaChGe_IvhGaAzJPE4gJAnZE87qnZsg7Z13R82vE7p1i7nV5ip9wBsI8o8i8rkOxHmC1hgwCbJlhRMQmwAE7GY5oxb09o9hSQsMT1nlkyjoJMY8yw9aKpBJOv6GVP6M?type=png)](https://mermaid.live/edit#pako:eNqNk1tvgjAYhv9K0-u5H8DFEgVPO3gAtxswpCufyISW9KAx6n9fQdBhHJEL0rTP833t2_SAKY8AWzgWJF-jhRMwZL6un5GEPavVEnU6L8dPCfKIen7MeZxCSHmWawUhA7XjYoMESK4FhWUl_3HsW0fq7wc0p9ZywX-AqlCC2CYU2px-7WxzGhJKQUrTlTGjc9EmDm73KLj5tyrDW4VEkcFlmzO63yZkRLVp44uWch2FQrP_whjXlskiYOe5XjlnCyDKTL_6XzMbTc75V5bdIN5KwrtcUgU5Dejd98wOQKTFiQu-W6aN7Drtyuo3rI8HrUHDmvh2cW7klmFVyLBEXCiCMMzU9xRRCUXjGeqeL6ICR41aM3_SXaChGe_IvhGaAzJPE4gJAnZE87qnZsg7Z13R82vE7p1i7nV5ip9wBsI8o8i8rkOxHmC1hgwCbJlhRMQmwAE7GY5oxb09o9hSQsMT1nlkyjoJMY8yw9aKpBJOv6GVP6M)

In the diagram you can see how the resources created in the ```main.tf``` file use different Google Cloud Platform resources to set up a private VPC and a Cloud Run service within it.

The google_compute_network resource creates a VPC Network, while google_compute_subnetwork creates a subnet within the VPC. Next, google_project_service and google_vpc_access_connector create a VPC access connector to allow the Cloud Run service to connect to the VPC.

Then a Cloud Router is created with google_compute_router, and a static IP address is reserved with google_compute_address. google_compute_router_nat schedules a NAT Gateway on the Cloud Router to route egress traffic from the Cloud Run service through the reserved static IP address.

Finally, google_cloud_run_service deploys the Cloud Run service inside the VPC and uses the VPC Access connector created earlier to route the service's traffic through the NAT Gateway and the static IP address.

---

<a id="item2"></a>
En resumen, estos archivos te permiten crear una red privada virtual (VPC) en Google Cloud Platform y desplegar un servicio de Cloud Run dentro de ella, asegurando la salida de tráfico a través de una dirección IP estática.

En el archivo ```main.tf```, se definen los recursos necesarios para crear la VPC y conectarla con el servicio de Cloud Run. También se crea una dirección IP estática y se programa un NAT Gateway para permitir que el tráfico de salida del servicio pase a través de la dirección IP estática.

El archivo ```variables.tf``` contiene todas las variables utilizadas en el archivo main.tf. Puedes modificar estos valores para ajustar la configuración de la VPC y del servicio de Cloud Run.

El archivo ```values.auto.tfvars``` es el archivo de valores de configuración específicos para tu entorno. Aquí es donde debes agregar los valores específicos para tu proyecto, como el nombre de la VPC, la región, la URL de la imagen de Docker y otros valores necesarios para crear los recursos.

Para ejecutar este código, debes tener instalado Terraform y configurar tu cuenta de Google Cloud Platform. Luego, debes ejecutar los siguientes comandos en la terminal, dentro del directorio donde se encuentran los archivos:

```terraform init```  
Este comando inicializa Terraform y descarga los proveedores necesarios.

```terraform plan```  
Este comando muestra los cambios que se realizarán en tu infraestructura. Asegúrate de revisar estos cambios antes de ejecutar el siguiente comando.

```terraform apply```  
Este comando aplica los cambios en tu infraestructura. Asegúrate de que los valores de tus variables estén configurados correctamente antes de ejecutar este comando.

Antes de ejecutar este código, es importante que tengas en cuenta las consideraciones de facturación y de seguridad. Asegúrate de entender los costos asociados con la creación de estos recursos y de seguir las mejores prácticas de seguridad al configurar la VPC y el servicio de Cloud Run.

[![](https://mermaid.ink/img/pako:eNqNk9tugkAQhl9ls9e1D-BFEwVPPXgA2xswZLuMSIVdsgeNVd-9y0FFY4NcEDLzfzPMP5k9pjwE3MaRINkKzW2fIfN0vJTE7FktF6jVejl8qjiJf8kBdb2I8yiBgPI00woCBmrLxRoJkFwLCouKv8asW0zq78dI-0Rmgv8AVYEEsYkpNGC9E7bJaEAoBSlNb8ZMBS4a2P7tzwpu3k3U4JYiYWgI2YAN7zcLGFEN5OhMJlyHgdDsP29GJShzX3xWxrpFzBJggq_e19RC43IfFWPV8m9F3j2vrJLYNcm755reIJJ84lzdKTxH1snziunVmI8HmX6NGXtWPi1yCpcqwaAQOJCPbzQTz1VExRSNpqhTLqESDmuVpt64M0cDomBLdldG2SCzJIaIIGAHNDt11Ay5pb-Venax1blTzLmkJ_gJpyDMSYXm0vZ53sdqBSn4uG0-QyLWPvbZ0eiIVtzdMYrbSmh4wjoLTVk7JuZAU9xekkTC8Q-j90SN?type=png)](https://mermaid.live/edit#pako:eNqNk9tugkAQhl9ls9e1D-BFEwVPPXgA2xswZLuMSIVdsgeNVd-9y0FFY4NcEDLzfzPMP5k9pjwE3MaRINkKzW2fIfN0vJTE7FktF6jVejl8qjiJf8kBdb2I8yiBgPI00woCBmrLxRoJkFwLCouKv8asW0zq78dI-0Rmgv8AVYEEsYkpNGC9E7bJaEAoBSlNb8ZMBS4a2P7tzwpu3k3U4JYiYWgI2YAN7zcLGFEN5OhMJlyHgdDsP29GJShzX3xWxrpFzBJggq_e19RC43IfFWPV8m9F3j2vrJLYNcm755reIJJ84lzdKTxH1snziunVmI8HmX6NGXtWPi1yCpcqwaAQOJCPbzQTz1VExRSNpqhTLqESDmuVpt64M0cDomBLdldG2SCzJIaIIGAHNDt11Ay5pb-Venax1blTzLmkJ_gJpyDMSYXm0vZ53sdqBSn4uG0-QyLWPvbZ0eiIVtzdMYrbSmh4wjoLTVk7JuZAU9xekkTC8Q-j90SN)

En el diagrama se puede ver cómo los recursos creados en el archivo ```main.tf``` utilizan diferentes recursos de Google Cloud Platform para configurar una VPC privada y un servicio de Cloud Run dentro de ella.

El recurso google_compute_network crea una VPC Network, mientras que google_compute_subnetwork crea una subred dentro de la VPC. A continuación, google_project_service y google_vpc_access_connector crean un conector de acceso a la VPC para permitir que el servicio de Cloud Run se conecte a la VPC.

Luego, se crea un Cloud Router con google_compute_router, y se reserva una dirección IP estática con google_compute_address. google_compute_router_nat programa un NAT Gateway en el Cloud Router para enrutar el tráfico de salida del servicio de Cloud Run a través de la dirección IP estática reservada.

Finalmente, google_cloud_run_service despliega el servicio de Cloud Run dentro de la VPC y utiliza el conector de acceso a la VPC creado anteriormente para enrutar el tráfico del servicio a través del NAT Gateway y la dirección IP estática.