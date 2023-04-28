- [[EN]](#item1)
- [[ES]](#item2)

<a id="item1"></a>
Terraform is a tool that allows you to programmatically create, modify, and delete infrastructure. To do this, it uses configuration files written in a specific language.

The ```main.tf``` file is the main configuration file in which the resources to be created are defined. In this case, you are defining the resources needed to create a private VPC on Google Cloud Platform and a NAT Gateway to route outbound traffic through a static IP address.

The ```variables.tf``` file contains the definitions of the variables that are used in the ```main.tf``` file. Variables are values that can be changed to customize infrastructure settings. In this case, variables are defined for the VPC name, the subnet name, the CIDR range of the subnet, the region where the subnet will be located, and other values needed to create the infrastructure.

The ```values.auto.tfvars``` file contains the values of the variables defined in ```variables.tf```. When running Terraform, this file will be automatically loaded to assign the values of the defined variables.

Before running Terraform, it's important to note that you need to modify the variable values in the ```values.auto.tfvars``` file to fit your specific project. Additionally, you must have access to a Google Cloud Platform account and a project configured in that account.

To run Terraform, you need to open a terminal and navigate to the folder where the .tf files are located. Then, you must execute the following commands:

```terraform init```
This command will initialize the Terraform configuration and download the necessary plugins to create the infrastructure.

```terraform plan```
This command will display a plan of what Terraform plans to do. It will show you which resources are going to be created, modified or deleted, and will ask you for confirmation to continue.

```terraform apply```
This command will create the infrastructure defined in the ```main.tf``` file.

Keep in mind that Terraform is a powerful tool that can modify existing infrastructure. Therefore, it is important to be careful when executing the commands and make sure that the changes made are the ones you want.

[![](https://mermaid.ink/img/pako:eNqNk9uOgjAQQH-l6bP6AT5souB1XTXq7gsYUsugrNCStmiM-u87XHRFjbs8kGZ6zkxnoEfKpQ-0SdeKJRuysF1B8Gk5OxaloBssNbJhgh1Teknq9beTDUEogBTbRAYn0kZWhWwVIW6CZZGgfQsr0DJVHPlQnIjlxCwUv6iVo5YCZuBEbGct5ToCj8s4SQ14Asxequ01yVOrc2_pdPUvsXsREyW_gRtPg9qFHF5bvYu1S7jHOHamsbIQmECq12r__qRK4vsPaXAvMd9HQb-2hs9LeYKZW7FQ7Yr67nxNLTIuJlgm71SIUU7Mr2MuoW4F-nDmOE5QUXbWjG_lsyLWZVal1ataRbBfCY4dK5KpT2Z5D6U3yJEZZB8NmYkzN8yEnAympFVMqASHlVxTZ9xakB6u9-xQIT41aOz-MTR6DE1cQWs0BoW_s4836JghLjUbiMGlTVz6TG1d6oozctlFmh8Ep02jUqjRNPGxvh0yvHgxbQYs0nD-AVhWNUg?type=png)](https://mermaid.live/edit#pako:eNqNk9uOgjAQQH-l6bP6AT5souB1XTXq7gsYUsugrNCStmiM-u87XHRFjbs8kGZ6zkxnoEfKpQ-0SdeKJRuysF1B8Gk5OxaloBssNbJhgh1Teknq9beTDUEogBTbRAYn0kZWhWwVIW6CZZGgfQsr0DJVHPlQnIjlxCwUv6iVo5YCZuBEbGct5ToCj8s4SQ14Asxequ01yVOrc2_pdPUvsXsREyW_gRtPg9qFHF5bvYu1S7jHOHamsbIQmECq12r__qRK4vsPaXAvMd9HQb-2hs9LeYKZW7FQ7Yr67nxNLTIuJlgm71SIUU7Mr2MuoW4F-nDmOE5QUXbWjG_lsyLWZVal1ataRbBfCY4dK5KpT2Z5D6U3yJEZZB8NmYkzN8yEnAympFVMqASHlVxTZ9xakB6u9-xQIT41aOz-MTR6DE1cQWs0BoW_s4836JghLjUbiMGlTVz6TG1d6oozctlFmh8Ep02jUqjRNPGxvh0yvHgxbQYs0nD-AVhWNUg)

In this diagram, you can see that the ```values.auto.tfvars``` file defines the values of the variables that are used in the ```variables.tf``` file. The ```variables.tf``` file defines the resources to be created in the ```main.tf``` file.

The ```main.tf``` file creates the following resources:

- google_compute_network: Creates a VPC Network on Google Cloud Platform.
- google_compute_subnetwork: Create a subnet in the VPC Network.
- google_project_service: Enables the Serverless VPC Access service.
- google_vpc_access_connector: Creates a Serverless VPC Access connector.
- google_compute_router: Create a router to program the NAT Gateway.
- google_compute_address: Reserves a static IP address.
- google_compute_router_nat: Creates a NAT Gateway on the router to route outbound traffic.

In the diagram, you can see that the created resources use other resources. For example, the created subnet uses the created VPC Network, and the NAT Gateway uses the subnet and reserved static IP address.

---

<a id="item2"></a>
Terraform es una herramienta que permite crear, modificar y eliminar infraestructura de manera programática. Para ello, utiliza archivos de configuración escritos en un lenguaje específico.

El archivo ```main.tf``` es el archivo de configuración principal en el que se definen los recursos que se van a crear. En este caso, se están definiciendo los recursos necesarios para crear una VPC privada en Google Cloud Platform y un NAT Gateway para enrutar el tráfico de salida a través de una dirección IP estática.

El archivo ```variables.tf``` contiene las definiciones de las variables que se utilizan en el archivo ```main.tf```. Las variables son valores que se pueden cambiar para personalizar la configuración de la infraestructura. En este caso, se definen variables para el nombre de la VPC, el nombre de la subred, el rango CIDR de la subred, la región donde se ubicará la subred y otros valores necesarios para crear la infraestructura.

El archivo ```values.auto.tfvars``` contiene los valores de las variables definidas en ```variables.tf```. Al ejecutar Terraform, este archivo se cargará automáticamente para asignar los valores de las variables definidas.

Antes de ejecutar Terraform, es importante que tengas en cuenta que debes modificar los valores de las variables en el archivo ```values.auto.tfvars``` para que se ajusten a tu proyecto específico. Además, debes tener acceso a una cuenta de Google Cloud Platform y un proyecto configurado en esa cuenta.

Para ejecutar Terraform, debes abrir una terminal y navegar hasta la carpeta donde se encuentran los archivos .tf. Luego, debes ejecutar los siguientes comandos:

```terraform init```
Este comando inicializará la configuración de Terraform y descargará los plugins necesarios para crear la infraestructura.

```terraform plan```
Este comando mostrará un plan de lo que Terraform planea hacer. Te mostrará qué recursos se van a crear, modificar o eliminar, y te pedirá confirmación para continuar.

```terraform apply```
Este comando creará la infraestructura definida en el archivo ```main.tf```.

Ten en cuenta que Terraform es una herramienta poderosa que puede modificar la infraestructura existente. Por lo tanto, es importante tener cuidado al ejecutar los comandos y asegurarse de que los cambios realizados sean los deseados.

[![](https://mermaid.ink/img/pako:eNqNk81uwjAMgF8lyhl4AA6ToGWMjQECtkuLqiw10NEmlZOA2Ni7z_1h6xBC66Gq7O9zXLf-5FLHwLt8gyLfsqUfKkZXL9iL1IHpCGd1x673As2Ktdt3Jx_WiQJGaY1gWAwn1icYE_GWEm_Xq6pCv0kjSIdGGwbqxLwgE4n6Jb2S9BDEifnBRutNCpHUWe4sRArsQeOOKhjtUMIVZ3DpGPf2D-3-rOWo30HayADuEwm3nOHZ2ecyElKCMXSqUqRrvCU-XPaImu43ldGlIuKYcHPLebx-TKSEbWqV6DfEp-B15rFJNbW68KCRH5f5xc9ga-S-gTwHCxogYFr0WNC9cj7MO8-ndoZNpwo9NEKTwEu1i9m87Lx2RiUwh-ITETMNFlbYRLLRjPWqqdTgY6PSLJj0lmwoLBzE8U_-xSZp8lG89tXo-Gp0Gire4hkg_b0xLcxnQYXcbiGDkHfpMRa4C3movogr9mZxVJJ3LTpocZfH1IifCNqzjHfXIjXw9Q37jC38?type=png)](https://mermaid.live/edit#pako:eNqNk81uwjAMgF8lyhl4AA6ToGWMjQECtkuLqiw10NEmlZOA2Ni7z_1h6xBC66Gq7O9zXLf-5FLHwLt8gyLfsqUfKkZXL9iL1IHpCGd1x673As2Ktdt3Jx_WiQJGaY1gWAwn1icYE_GWEm_Xq6pCv0kjSIdGGwbqxLwgE4n6Jb2S9BDEifnBRutNCpHUWe4sRArsQeOOKhjtUMIVZ3DpGPf2D-3-rOWo30HayADuEwm3nOHZ2ecyElKCMXSqUqRrvCU-XPaImu43ldGlIuKYcHPLebx-TKSEbWqV6DfEp-B15rFJNbW68KCRH5f5xc9ga-S-gTwHCxogYFr0WNC9cj7MO8-ndoZNpwo9NEKTwEu1i9m87Lx2RiUwh-ITETMNFlbYRLLRjPWqqdTgY6PSLJj0lmwoLBzE8U_-xSZp8lG89tXo-Gp0Gire4hkg_b0xLcxnQYXcbiGDkHfpMRa4C3movogr9mZxVJJ3LTpocZfH1IifCNqzjHfXIjXw9Q37jC38)

En este diagrama, puedes ver que el archivo ```values.auto.tfvars``` define los valores de las variables que se utilizan en el archivo ```variables.tf```. El archivo ```variables.tf``` define los recursos que se van a crear en el archivo ```main.tf```.

El archivo ```main.tf``` crea los siguientes recursos:

- google_compute_network: Crea una VPC Network en Google Cloud Platform.
- google_compute_subnetwork: Crea una subred en la VPC Network.
- google_project_service: Habilita el servicio de Serverless VPC Access.
- google_vpc_access_connector: Crea un conector de Serverless VPC Access.
- google_compute_router: Crea un router para programar el NAT Gateway.
- google_compute_address: Reserva una dirección IP estática.
- google_compute_router_nat: Crea un NAT Gateway en el router para enrutar el tráfico de salida.  

En el diagrama, se puede ver que los recursos creados utilizan otros recursos. Por ejemplo, la subred creada utiliza la VPC Network creada, y el NAT Gateway utiliza la subred y la dirección IP estática reservada.
