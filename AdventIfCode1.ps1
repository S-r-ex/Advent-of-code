$file_input = Get-Content "$PSScriptRoot\caliorielves.txt"

$elfarray = @()

foreach ($item in $file_input) {
    $carriedcalories += $item
        if ($item -eq "") {
            $elfarray += $carriedcalories
            $carriedcalories = 0
        }
}

$sortedelves = $elfarray | sort -Descending

"The elf with the most calories has " + $sortedelves[0]

"The top three has a total of " + ($sortedelves[0..2] | Measure-Object -Sum).sum