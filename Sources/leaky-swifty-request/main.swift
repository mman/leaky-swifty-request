import SwiftyRequest
import LoggerAPI
import Dispatch

func get() {
    let request = RestRequest(method: .get, url: "https://google.com")
    request.response() { data, response, error in
        if let e = error {
            print("ERROR: failed to get google: \(e)")
        } else {
            print("got google")
        }
    }

    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        get()
    }
}

get()

dispatchMain()
