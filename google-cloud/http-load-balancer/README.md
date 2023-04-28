- [[EN]](#item1)
- [[ES]](#item2)

<a id="item1"></a>
These Terraform files are used to create an HTTP load balancer configuration on Google Cloud Platform. The load balancer is configured to use a group of network endpoints (Network Endpoint Group) that point to a Cloud Run service.

The ```variables.tf``` file defines the variables to be used in the ```main.tf``` file. Variables are customizable values that are passed to Terraform resources at run time. For example, lb_name is a variable that defines the name of the load balancer.

The ```values.auto.tfvars``` file is where you can define the values of the variables. It is important that you modify this file with the specific values for your project before running the code. For example, you would replace [LOAD_BALANCER_NAME] with whatever name you want to give your load balancer.

The ```main.tf``` file is where the Terraform configuration is defined. In this file, the lb-http module is defined, which is the module that will be used to create the load balancer. You also define a google_compute_region_network_endpoint_group resource that will be used to create the network endpoint group.

To run this code, you'll need to install Terraform on your computer and then run the terraform apply command in the folder where the files are located. This will create the necessary resources on GCP based on the configuration defined in the ```main.tf``` file.

Before running the code, it's important to check that the variable values in the ```values.auto.tfvars``` file are correct for your project. You should also ensure that you have the necessary permissions to create the resources on GCP and that you have sufficient credit available in your account.

[![](https://mermaid.ink/img/pako:eNpdkdFKwzAUhl_lkOvNB-iFYNvZCVPE6lU6SkxOu7A0p6SJItve3bSrsi1XIXz85_tzDkySQpaw1ol-B-95ZSGeB94Jbe98s4Xl8v74MeBwhJSbz-XO-x46UsHgdmYvkIy3RK3BWlLXB4-1w1aTrS36b3L7Gq3qSVtft45CDw4HCk7-JaVjEuS8mDIgMxQUbEgoSIURVqKbwWwCV_xMvAULA7ov_R-UT0qv46QBPEWvy_eoeoRH_iysaFFBWW4gQ-d1o6Xw1xETWvBUyH1Uh_JqSjEhT1aaoMbya_5yrgmruSYUY80ZX99KrSrLFqxDF_9axRUcRq5ifocdViyJVyXcvmKVPUVOBE_lj5Us8S7ggoVeRdtci7i5jiWNMAOefgFhQJmS?type=png)](https://mermaid.live/edit#pako:eNpdkdFKwzAUhl_lkOvNB-iFYNvZCVPE6lU6SkxOu7A0p6SJItve3bSrsi1XIXz85_tzDkySQpaw1ol-B-95ZSGeB94Jbe98s4Xl8v74MeBwhJSbz-XO-x46UsHgdmYvkIy3RK3BWlLXB4-1w1aTrS36b3L7Gq3qSVtft45CDw4HCk7-JaVjEuS8mDIgMxQUbEgoSIURVqKbwWwCV_xMvAULA7ov_R-UT0qv46QBPEWvy_eoeoRH_iysaFFBWW4gQ-d1o6Xw1xETWvBUyH1Uh_JqSjEhT1aaoMbya_5yrgmruSYUY80ZX99KrSrLFqxDF_9axRUcRq5ifocdViyJVyXcvmKVPUVOBE_lj5Us8S7ggoVeRdtci7i5jiWNMAOefgFhQJmS)

This diagram shows that the ```main.tf``` file uses the lb-http module and the google_compute_region_network_endpoint_group resource to create an HTTP load balancer on Google Cloud Platform. The load balancer points to a Cloud Run service and uses a managed SSL certificate and a backend service that includes a pool of network endpoints.

---

<a id="item2"></a>
Estos archivos de Terraform son utilizados para crear una configuración de un balanceador de carga HTTP en Google Cloud Platform. El balanceador de carga se configura para usar un grupo de puntos finales de red (Network Endpoint Group) que apuntan a un servicio de Cloud Run.

El archivo ```variables.tf``` define las variables que se utilizarán en el archivo ```main.tf```. Las variables son valores personalizables que se pasan a los recursos de Terraform en tiempo de ejecución. Por ejemplo, lb_name es una variable que define el nombre del balanceador de carga.

El archivo ```values.auto.tfvars``` es donde se pueden definir los valores de las variables. Es importante que modifiques este archivo con los valores específicos para tu proyecto antes de ejecutar el código. Por ejemplo, deberás reemplazar [LOAD_BALANCER_NAME] con el nombre que desees darle al balanceador de carga.

El archivo ```main.tf``` es donde se define la configuración de Terraform. En este archivo, se define el módulo lb-http, que es el módulo que se usará para crear el balanceador de carga. También se define un recurso google_compute_region_network_endpoint_group que se utilizará para crear el grupo de puntos finales de red.

Para ejecutar este código, deberás instalar Terraform en tu computadora y luego ejecutar el comando terraform apply en la carpeta donde se encuentran los archivos. Esto creará los recursos necesarios en GCP según la configuración definida en el archivo ```main.tf```.

Antes de ejecutar el código, es importante que compruebes que los valores de las variables en el archivo ```values.auto.tfvars``` sean correctos para tu proyecto. También debes asegurarte de que tienes los permisos necesarios para crear los recursos en GCP y que tienes el suficiente crédito disponible en tu cuenta.

[![](https://mermaid.ink/img/pako:eNpdkUFuwjAQRa8y8hp6gCwqkYSGSrSLpqwcFE3tIVg4duTYrShw9zohrQpeWaOn7_c9JyasJJawxmG3h_e8MhDPgreozIPfbWE-fzxvvNLqG8-Qcv0x33vfQWtl0LSd8Fsq4421jaZa2LYLnmpHjbKmNuS_rDvUZGRnlfF142zowFFvgxO_YekQBjkvxgzItA0S1hYlpKjRCHITmI3gkl-Jt2CgJ_ep_oLy0WrRBeMRBq3_400fJ0_8BQ02JKEs15CR82qnBPrbhBEteIriEM2hvHmkGJFnI3Q40hlW_PVaEpZTSSiGkhO9ulNaVobNWEsufreMWzgNWMX8nlqqWBKvEt2hYpW5RA6Dt-XRCJZ4F2jGQieja64wLq9lyQ51T5cfo_KahA?type=png)](https://mermaid.live/edit#pako:eNpdkUFuwjAQRa8y8hp6gCwqkYSGSrSLpqwcFE3tIVg4duTYrShw9zohrQpeWaOn7_c9JyasJJawxmG3h_e8MhDPgreozIPfbWE-fzxvvNLqG8-Qcv0x33vfQWtl0LSd8Fsq4421jaZa2LYLnmpHjbKmNuS_rDvUZGRnlfF142zowFFvgxO_YekQBjkvxgzItA0S1hYlpKjRCHITmI3gkl-Jt2CgJ_ep_oLy0WrRBeMRBq3_400fJ0_8BQ02JKEs15CR82qnBPrbhBEteIriEM2hvHmkGJFnI3Q40hlW_PVaEpZTSSiGkhO9ulNaVobNWEsufreMWzgNWMX8nlqqWBKvEt2hYpW5RA6Dt-XRCJZ4F2jGQieja64wLq9lyQ51T5cfo_KahA)

Este diagrama muestra que el archivo ```main.tf``` utiliza el módulo lb-http y el recurso google_compute_region_network_endpoint_group para crear un balanceador de carga HTTP en Google Cloud Platform. El balanceador de carga apunta a un servicio de Cloud Run y utiliza un certificado SSL administrado y un servicio de backend que incluye un grupo de puntos finales de red.