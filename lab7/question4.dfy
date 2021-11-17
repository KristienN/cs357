method Min(a: int, b: int) returns (m : int)
requires a != b
ensures a < b ==> a == m && b < a ==> b == m
{
    if(a < b){
        m:= a;
    } else {
        m:= b;
    }
}