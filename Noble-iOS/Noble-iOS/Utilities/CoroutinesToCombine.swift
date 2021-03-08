import Combine
import Foundation
import shared

func createPublisher<T>(wrapper: FlowWrapper<T>,
                        scopeProvider: ScopeProvider = MainScopeProvider()) -> AnyPublisher<T?, Error> {
    let subject = PassthroughSubject<T?, Error>()

    var job: Kotlinx_coroutines_coreJob? = nil

    return subject.handleEvents(receiveSubscription: { subscription in
        job = wrapper.subscribe(onEach: {subject.send($0) },
                                onThrow: { subject.send(completion: .failure(SharedError($0))) },
                                onComplete: { subject.send(completion: .finished) },
                                scopeProvider: MainScopeProvider())
    }, receiveCancel: {
        job?.cancel(cause: nil)
    })
    .eraseToAnyPublisher()
}

class SharedError: LocalizedError {
    let throwable: KotlinThrowable

    init(_ throwable: KotlinThrowable) {
        self.throwable = throwable
    }

    var errorDescription: String? { throwable.message }
}
