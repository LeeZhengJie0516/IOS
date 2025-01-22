//
//  ArtistList.swift
//  FavouriteArtist
//
//  Created by labuser on 15/01/2025.
//

import Foundation

struct Artist: Identifiable {
    var id = UUID() // Unique identifier
    var name:String = ""
    var image:String = ""
    var desc:String = ""
    var color:String = ""
    var url:String = ""
}

let Artists = [Artist(name: "Kenshi Yonezu", image: "yonezu", desc: "Kenshi Yonezu is a Japanese musician, singer-songwriter, record producer, videographer and illustrator.", color: "color1", url: "https://www.instagram.com/hachi_08/?hl=en"),
               Artist(name: "Chrissy Costanza", image: "chrissy", desc: "Christina Nicola Costanza (born August 23, 1995) is an American singer, songwriter, and musician.", color: "color2", url: "https://x.com/chrissycostanza?lang=en&mx=2"),
               Artist(name: "Utada Hikaru", image: "utada", desc: "Utada Hikaru is a Japanese and American singer, songwriter, and producer.", color: "color3", url: "https://www.en.utadahikaru.jp/"),
               Artist(name: "Hozier", image: "hozier", desc: "Hozier is an Irish musician. His music primarily draws from folk, soul and blues, often using religious and literary themes and taking political or social justice stances.", color: "color1", url: "https://hozier.com/"),
               Artist(name: "Yamori", image: "yamori", desc: "Yamorita Keitaro, better know as YAMORI, is a Japanese singer and beatboxer.", color: "color5", url: "https://www.instagram.com/yamorita_keitaro/?hl=en")]
