import Async

extension Collection {
    @discardableResult
    public func aggregate(_ pipeline: AggregationPipeline) -> Cursor<C> {
        let aggregate = Aggregate(pipeline: pipeline, on: self)
        
        return aggregate.execute(on: self.connection)
    }
}
