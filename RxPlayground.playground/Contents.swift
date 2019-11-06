import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

let disposeBag = DisposeBag()
//let number = Observable<String>.of("satu", "dua", "tiga")
//
//number.subscribe(onNext: { (value) in
//    print(value)
//}, onError: { (error) in
//    print(error)
//}, onCompleted: {
//    print("complete")
//}, onDisposed:  {
//    print("dispose")
//}).disposed(by: disposeBag)





//number sebagai observable, dan x sebagai observer
//ketika disposed, x yang akan di release
let number = PublishSubject<String>()
let x = number.subscribe(onNext: { (value) in
    print("haha \(value)")
}, onDisposed: {
    print("disposed")
}
                 ).disposed(by: disposeBag)

number.onNext("satu")
print("do something")
number.onNext("dua")
number.onCompleted()
number.onNext("lima")

