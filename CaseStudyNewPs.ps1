



do {
Write-Host
Write-Host " Menu / Type an option: "
$userAnswer = Read-Host " `n` 1:Display root directory-list content `n` 2: Display machine performance memory and cpu usage `n` 3: Exit `n` Option "

switch ($userAnswer)
{
  1{ Get-ChildItem}
  2{Get-Counter '\Processor(_Total)\% Processor Time'
    Get-Counter '\memory\available MBytes'}
  3{Write-Host Good Bye}
  default {Write-Host "Option not available"}
}

}while($userAnswer -ne 3)






