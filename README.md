Creating AWS IAM user with terraform
====================================

English
=======

Create IAM User Profile with the aws cli with the next command:

```hcl
aws configure --profile <name>
```

Previously you must create the user with programatic access in order to connect your terraform with your
aws account. In my case I create the user terracoder and I also used that name for my profile.

In my code I create the user developer1, you should replace it for your user name. To create the policy
I recommend to use the policy editor of the aws console, then copy and paste the json code of two section,
the resources and the actions. 

Finally, you just have to execute the following commands:

```hcl
terraform init
```

```hcl
terraform plan
```

```hcl
terraform apply
```

Creando un usuario IAM con terraform
====================================

Español
=======

Cree un perfil de usuario de IAM con aws cli con el siguiente comando:

```hcl
aws configure --profile <nombre>
```

Previamente debes crear el usuario con acceso programático para poder conectar tu terraform con tu
cuenta aws. En mi caso creé el usuario terracoder y también usé ese nombre para mi perfil.

En mi código, creé el usuario developer1, debe reemplazarlo por su nombre de usuario. Para crear la política
Recomiendo usar el editor de políticas de la consola aws, luego copiar y pegar el código json de dos secciones,
resources and actions.

Finalmente, solo debes ejecutar los siguientes comandos:

```hcl
terraform init
```

```hcl
terraform plan
```

```hcl
terraform apply
```