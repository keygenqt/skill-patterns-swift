import SwiftCLI

class GreetCommand: Command {
    let name = "greet"

    @Param var person: String

    func execute() throws {
        stdout <<< "Hello \(person)!"
    }
}

let greeter = CLI(name: "greeter")
greeter.commands = [GreetCommand()]
greeter.go()