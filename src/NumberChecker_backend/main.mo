import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Bool "mo:base/Bool";

actor Tokenchecker {
  type FancyResult = {
    #Ok : Text;
    #Err : Text;
  };

  
  func checkToken(token : Text, boolInput : Text) : FancyResult {
    if (token == boolInput) {
      return #Ok "The token is valid";
    } else {
      return #Err "The token is invalid";
    };
  };

  public query func CheckToken(token : Text, boolInput : Text) : async Text {
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
