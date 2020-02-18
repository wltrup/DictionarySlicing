import XCTest
@testable import DictionarySlicing

final class DictionarySlicingTests: XCTestCase {

    func test_toSlice() {
        // let x = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]
        // let res = x.toSlice()
        // How to compare two dictionary slices for equality ???
    }

    func test_toKeyValuePairs() {
        let x = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]
        let exp = [
            (key: 1, value: "One"),
            (key: 2, value: "Two"),
            (key: 3, value: "Three"),
            (key: 4, value: "Four"),
            (key: 5, value: "Five")
        ]
        let res = x.toKeyValuePairs().sorted { $0.key < $1.key }
        exp.enumerated().forEach { k, pair in
            XCTAssert(res[k].key == pair.key)
            XCTAssert(res[k].value == pair.value)
        }
    }

    func test_toDictionary_fromSlice() {
        let x = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]
        let s = x.toSlice()
        let exp = x
        let res = toDictionary(s)
        for key in x.keys { XCTAssert(res[key] == exp[key]) }
    }

    func test_toDictionary_fromKeyValuePairs() {
        let x = [
            (key: 1, value: "One"),
            (key: 2, value: "Two"),
            (key: 3, value: "Three"),
            (key: 4, value: "Four"),
            (key: 5, value: "Five")
        ]
        let exp = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]
        let res = toDictionary(x)
        for key in exp.keys { XCTAssert(res[key] == exp[key]) }
    }

}
