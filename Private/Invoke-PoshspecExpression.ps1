#Private - Build the It scriptblock based on parameters from Get-PoshspecParam
function Invoke-PoshspecExpression {
    [CmdletBinding()]
    param(
        # Poshspec Param Object
        [Parameter(Mandatory, Position=0)]
        [PSCustomObject]
        $InputObject
    )
    
    It $InputObject.Name {
        Invoke-Expression $InputObject.Expression
    }    
}