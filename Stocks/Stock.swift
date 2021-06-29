//
//  Stock.swift
//  Stocks
//
//  Created by María Fernanda Bracho Salazar on 29.06.21.
//

import Foundation

// MARK: - Stock
struct Stock: Codable {
    let name: StockName
    let pricePerMin: TimeSeries1Min

    enum CodingKeys: String, CodingKey {
        case name = "Meta Data"
        case pricePerMin = "Time Series (1min)"
    }
}

// MARK: - StockName
struct StockName: Codable {
    let stockName: String

    enum CodingKeys: String, CodingKey {
        case stockName = "2. Symbol"
    }
}

// MARK: - TimeSeries1Min
struct TimeSeries1Min: Codable {
    let dateAndTime: RightNowPrice

    enum CodingKeys: String, CodingKey {
        case dateAndTime = "2021-06-28 19:53:00"
    }
}

// MARK: - RightNowPrice
struct RightNowPrice: Codable {
    let closingPrice: String

    enum CodingKeys: String, CodingKey {
        case closingPrice = "4. close"
    }
}



