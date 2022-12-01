$file_input = Get-Content "$PSScriptRoot\caliorielves.txt"

$ElfArray = @()

foreach ($item in $file_input) {
    $CarriedCalories += $item
    if ($item -eq "") {
        $ElfArray += $CarriedCalories
        $CarriedCalories = 0
    }
}

$SortedElves = $ElfArray | Sort -Descending

"`n The elf with the most calories has " + $SortedElves[0] + " calories `n" 

"The top three has a total of " + ($SortdElves[0..2] | Measure-Object -Sum).Sum + " calories `n"
