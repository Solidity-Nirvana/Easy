// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  View functions, syntax explained
contract Weather_Forecast {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 rainInches;     /// @notice The amount of rain, in inches

    uint256 snowInches;     /// @notice The amount of snow, in inches

    uint256 windSpeed;      /// @notice The speed of wind, in miles per hour

    address location;       /// @notice The location of the weather forecast

    // Notice the above state variables are not marked "public" (not readable by outside/external contracts)



    // -----------------
    //    Constructor
    // -----------------

    /// @param rain The amount of inches of rain forecasted
    /// @param snow The amount of inches of snow forecasted
    /// @param wind The speed of wind forecasted
    /// @param _location The location of the forecast
    constructor(uint256 rain, uint256 snow, uint256 wind, address _location) {
        rainInches = rain;
        snowInches = snow;
        windSpeed = wind;
        location = _location;
    }



    // ---------------
    //    Functions
    // ---------------

    /// @notice This function returns "rainInches"
    /// @dev Implicit return variable name, implict variable assignment
    function rain() public view returns (uint256) {
        return rainInches;
    }

    /// @notice This function returns "rainInches"
    /// @dev Explicit return variable name, implict variable assignment
    function rainParameter() public view returns (uint256 rain) {
        return rainInches;
    }

    /// @notice This function returns "rainInches"
    /// @dev Explicit return variable name, explicit variable assignment
    function rainParameterAssignment() public view returns (uint256 rain) {
        rain = rainInches;
    }

    /// @notice This function returns "rainInches" and "snowInches"
    /// @dev Example of multiple parameters, implicit
    function rainAndSnow() public view returns (uint256, uint256) {
        return (rainInches, snowInches);
    }

    /// @notice This function returns "rainInches" and "snowInches"
    /// @dev Example of multiple parameters, explicit
    function rainAndSnowParameters() public view returns (uint256 rain, uint256 snow) {
        rain = rainInches;
        snow = snowInches;
    }

    /// @notice This function returns "windSpeed" and "location"
    /// @dev Example of multiple parameters, different types
    function windAndLocation() public view returns (uint256 wind, address loc) {
        wind = windSpeed;
        loc = location;
    }
    
}


contract View_1 is Concept {

    // Two weather forecasts, one for California (CA) and one for New York (NY)

    Weather_Forecast CA;
    Weather_Forecast NY;

    function setUp() public {
        CA = new Weather_Forecast(10, 0, 8, address(0xCA));
        NY = new Weather_Forecast(0, 12, 20, address(0x42));
    }

    // View "rainInches" value

    function test_View_1A() public {
        
        uint256 rainCA = CA.rain();
        uint256 rainNY = NY.rain();
        emit Log("rainCA rain()", rainCA);
        emit Log("rainNY rain()", rainNY);
        
        rainCA = CA.rainParameter();
        rainNY = NY.rainParameter();
        emit Log("rainCA rainParameter()", rainCA);
        emit Log("rainNY rainParameter()", rainNY);
        
        rainCA = CA.rainParameterAssignment();
        rainNY = NY.rainParameterAssignment();
        emit Log("rainCA rainParameterAssignment()", rainCA);
        emit Log("rainNY rainParameterAssignment()", rainNY);

    }

    // View "rainInches" and "snowInches"

    function test_View_1B() public { 
        
        // These are called tuples: parentheses around multiple variables
        (uint256 rainCA, uint256 snowCA) = CA.rainAndSnow();
        (uint256 rainNY, uint256 snowNY) = NY.rainAndSnow();

        emit Log("rainCA", rainCA);
        emit Log("snowCA", snowCA);
        emit Log("rainNY", rainNY);
        emit Log("snowNY", snowNY);

        (rainCA, snowCA) = CA.rainAndSnowParameters();
        (rainNY, snowNY) = NY.rainAndSnowParameters();

        emit Log("rainCA", rainCA);
        emit Log("snowCA", snowCA);
        emit Log("rainNY", rainNY);
        emit Log("snowNY", snowNY);

    }

    // View "windSpeed" and "location"

    function test_View_1C() public { 
        
        (uint256 windCA, address areaCA) = CA.windAndLocation();
        (uint256 windNY, address areaNY) = NY.windAndLocation();

        emit Log("windCA", windCA);
        emit Log("areaCA", areaCA);
        emit Log("windNY", windNY);
        emit Log("areaNY", areaNY);

    }

}

