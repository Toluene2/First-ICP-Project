import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Bool "mo:base/Bool";

actor Tokenchecker {
  type FancyResult = {
    #Ok : Text;
    #Err : Text;
  };

  
  func checkToken(token : Text, boolInput : Bool) : FancyResult {
    if (token == BTC or token == ICP) {
      return #Ok "The token is valid";
    } else {
      return #Err "The token is invalid";
    };
  };

  public query func useCheckToken(token : Text, boolInput : Bool) : async Text {
    let operationResult = checkToken(token, boolInput);
    switch (operationResult) {
      case (#Ok successMessage) {
        return successMessage;
      };
      case (#Err errorMessage) {
        return errorMessage;
      };
    };
  };
};
