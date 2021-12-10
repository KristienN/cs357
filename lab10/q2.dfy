function SumTo(a: array<int>, i: nat): int
reads a
requires 0 <= i <= a.Length
{
    if i == 0 then 0 else SumTo(a, i - 1) + a[i - 1]
}

method CumulativeSum(a: array<int>)
modifies a
ensures forall j | 0 <= j < a.Length :: a[j] == old(SumTo(a, j+1))
{
    var sum:= 0;
    var i:= 0;

    while(i < a.Length)
    invariant 0 <= i < a.Length
    invariant forall i | 0 <= i < a.Length :: a[i] == old(SumTo(a, i))
    invariant a[i] == old(SumTo(a, i-1)) + a[i-1]
    invariant i == 0 ==> sum == 0
    decreases a.Length - i
    {
        sum, a[i] := sum + a[i], sum;
        i := i +1;
    }
}