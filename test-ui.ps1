Add-Type -AssemblyName PresentationFramework

$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">
    <Border Name="parentBorder" Width="200">
        <Border Name="childBorder" Width="50" />
    </Border>
</Window>
"@

[xml]$XAMLData = $xaml
$reader = New-Object System.Xml.XmlNodeReader $XAMLData
$window = [System.Windows.Markup.XamlReader]::Load($reader)

$child = $window.FindName("childBorder")
try {
    $parentWidth = $child.Parent.ActualWidth
    Write-Output "Parent Actual Width: $parentWidth"
} catch {
    Write-Output "ERROR: $_"
}
