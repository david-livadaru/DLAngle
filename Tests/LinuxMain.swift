import XCTest
@testable import DLAngleTests

XCTMain([
    testCase(AngleTests.allTests),
    testCase(DegreeMeasurementTests.allTests),
    testCase(DegreeTests.allTests),
    testCase(RadianMeasurementTests.allTests),
    testCase(RadianTests.allTests),
    testCase(GenericTrigonometryTests.allTests),
    testCase(InverseHyperbolicTrigonometricTests.allTests),
    testCase(InverseTrigonometricTests.allTests),
    testCase(RadianHyperbolicTrigonometricTests.allTests),
    testCase(RadianInverseHTrigonometricTests.allTests),
    testCase(RadianInverseHTrigonometricTests2.allTests),
    testCase(RadianInverseTrigonometricTests.allTests),
    testCase(RadianInverseTrigonometricTests2.allTests),
    testCase(RadianTrigonometricTests.allTests),
    testCase(RadianTrigonometricTests2.allTests),
    testCase(ArgumentsCheckerTests.allTests),
    testCase(Atan2ArgumentsCheckerTests.allTests),
    testCase(PredicateTests.allTests),
    testCase(TrigonometricArgumentsCheckerTests.allTests)
])
