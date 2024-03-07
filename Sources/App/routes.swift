import Vapor
import HakoShared

func routes(_ app: Application) throws {
    try app.register(collection: Controller(cards: try Card.buildCards()))
}
