# Define o nome do data factory e do resource group
$factoryName = "{factory_name}"
$resourceGroup = "{resource_group}"

# Define o caminho do arquivo de saída
$outputFile = "D:\Usuario\Documents\listapipelines\pipelines.json"

# Executa o comando "az datafactory pipeline list" e pega o resultado
$pipelines = az datafactory pipeline list --factory-name $factoryName --resource-group $resourceGroup

# Salva o resultado em um arquivo .json
$pipelines | Out-File -FilePath $outputFile -Encoding utf8

Write-Host "O resultado foi salvo em: $outputFile"
