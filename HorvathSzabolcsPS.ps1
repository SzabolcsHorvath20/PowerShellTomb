Write-Host "Az windows mappaba levo elemek listaja:"
cd C:\Windows
$tomb = Get-ChildItem
$tomb
Write-Host "Milyen szempont szerint szeretne csoportositani? n-nev/h-hossz/m-meret"
$szempont = Read-Host
if($szempont -eq 'n')
{
	Write-Host "Nev szerint:"
	$tomb = Get-ChildItem | Sort-Object
	$tomb
}
elseif($szempont -eq 'h')
{
	Write-Host "Hossz szerint:"
	$tomb = Get-ChildItem | Sort-Object -Property Length
	$tomb
}
elseif($szempont -eq 'm')
{
	Write-Host "Meret szerint:"
	$tomb = Get-ChildItem | Sort-Object -Property Size
	$tomb
}
else
{
	Write-Host "Ervenytelen szempont!"
}
Write-Host "Nyomjon meg egy gombot a kilepeshez ....."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
