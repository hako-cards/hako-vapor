import HakoShared
import Vapor

func routes(_ app: Application) throws {
    try app.register(collection: Controller(cards: Card.buildCards()))
}
