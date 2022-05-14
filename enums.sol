pragma solidity 0.9.0;

contract enums {
    enum riceAndDodo {
        FRIED,
        BOILED,
        STEAMED
    }

    // Tunde has type riceanddodo
    riceAndDodo Tunde;
    riceAndDodo constant defaultTaste = riceAndDodo.BOILED;

    function setFried() public {
        Tunde = riceAndDodo.FRIED
    }

    function getTaste() public view returns(riceAndDodo) {
        return Tunde;
    }

    function getDefaultTaste() public view returns(uint) {
        return uint(defaultTaste);
    }
}

contract shirts {
    enum shirtColor {RED, WHITE, BLUE};

    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.BLUE;

    function setWhite() public {
        choice = shirtColor.WHITE;
    }

    function getChoice() public view returns(shirtColor) {
        return choice;
    }

    function getDefaultChoice() public view returns(shirtColor) {
        return defaultChoice;
    }

}