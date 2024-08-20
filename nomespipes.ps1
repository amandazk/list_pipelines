# Define o caminho do arquivo JSON com os nomes das pipelines
$jsonFilePath = "D:\Usuario\Documents\listapipelines\pipelines.json"

# Lê o conteúdo do arquivo JSON
$jsonContent = Get-Content -Path $jsonFilePath -Raw | ConvertFrom-Json

# Extrai todos os valores associados à chave "name"
$names = $jsonContent | ForEach-Object { $_.name }

# Exibe os nomes/salva em um novo arquivo
$names | ForEach-Object { Write-Output $_ }

# Salva os nomes em um arquivo de texto
$namesFilePath = "D:\Usuario\Documents\listapipelines\nomes_extraidos.txt"
$names | Out-File -FilePath $namesFilePath -Encoding utf8

Write-Host "Os nomes foram extraídos e salvos em: $namesFilePath"
