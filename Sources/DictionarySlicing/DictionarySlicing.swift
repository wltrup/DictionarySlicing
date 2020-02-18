import Foundation

public extension Dictionary {
    
    func toSlice() -> Dictionary.SubSequence {
        return self[startIndex ..< endIndex]
    }
    
    func toKeyValuePairs() -> [Element] {
        return map { ($0.key, $0.value) }
    }
    
}

public func toDictionary<K: Hashable, V>(_ subseq: Dictionary<K, V>.SubSequence) -> [K: V] {
    var d: [K: V] = [:]
    subseq.forEach { d[$0.key] = $0.value }
    return d
}

public func toDictionary<K: Hashable, V>(_ kvPairs: [Dictionary<K, V>.Element]) -> [K: V] {
    var d: [K: V] = [:]
    kvPairs.forEach { d[$0.key] = $0.value }
    return d
}
