method DoubleArray(s: array<int>, t: array<int>)
modifies t
requires s.Length == t.Length && s.Length != 0
ensures forall j | 0 <= j < t.Length :: t[j] == old(s[j])*2 
{
    var i := 0;

    while(i < t.Length)
    invariant 0 <= i <= t.Length
    invariant forall i | 0 < i < t.Length :: t[i] == old(s[i])*2
    decreases t.Length - i
    {
        t[i] := s[i] * 2;
        i:= i + 1;
    }
}