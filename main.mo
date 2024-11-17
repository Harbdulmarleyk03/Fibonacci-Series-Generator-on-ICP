import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor FibonacciGenerator{
  // program to generate fibonacci series up to n terms
  var n1:Nat = 0;
  var n2:Nat = 1;
  var nextTerm:Nat=0;
  var result:Text = "";

  public func generateFSeries(series_len : Nat) : async Text {
    var i = 1;
    // Special cases
    if(series_len == n1){
      return Nat.toText(n1);
    };
    if(series_len == n2){
      return Nat.toText(n2);
    } else{
      while(i <= series_len ){
        result #= Nat.toText(n1) # " ";
        nextTerm := n1 + n2;
        n1:=n2;
        n2 := nextTerm;
        i += 1;
      }
    };
    return result;
  };
};
