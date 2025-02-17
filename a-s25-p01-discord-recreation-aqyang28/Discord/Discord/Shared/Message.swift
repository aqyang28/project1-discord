//
//  Message.swift
//  Discord
//
//  Created by Ryder Klein on 2/13/25.
//

import Foundation

struct Message: Identifiable {
    let id: UUID = .init()

    let sender: User
    let time: String
    let body: String
}

// Extension lets us add fields and methods to something after it's defined. This can be useful to extend
// library functionality, or as we use it, to keep the examples in a different section than the declaration.
extension Message {
    static var example: Message {
        Message(sender: .emma, time: "Today at 1:38pm", body: "Raccoon documentaries, here we come!")
    }

    static var ourHouse: [Message] = [
        Message(
            sender: .matt,
            time: "Today at 3:15 PM",
            body: "Yo, Emma, check this out, you won't believe it."),
        Message(
            sender: .emma,
            time: "Today at 3:16 PM",
            body: "What's up, Matt? Spill the beans!"),
        Message(
            sender: .matt,
            time: "Today at 3:18 PM",
            body: "Raccoons, Em! We've got a gang of raccoons chilling in the basement."),
        Message(
            sender: .emma,
            time: "Today at 3:20 PM",
            body: "Raccoons in the basement? That's insane! Are they causing any trouble?"),
        Message(
            sender: .matt,
            time: "Today at 3:22 PM",
            body: "Nah, they seem pretty chill, just lounging around. But they've made a mess down there."),
        Message(
            sender: .emma,
            time: "Today at 3:24 PM",
            body: "So, what's the plan, Matt? Calling animal control or becoming raccoon whisperers?"),
        Message(
            sender: .matt,
            time: "Today at 3:26 PM",
            body: "Haha, not trying to have raccoon roomies. I already hit up wildlife removal; they'll be here tomorrow."),
        Message(
            sender: .emma,
            time: "Today at 3:28 PM",
            body: "Smart move, Matt. I hope they can safely relocate our new furry friends."),
        Message(
            sender: .matt,
            time: "Today at 3:30 PM",
            body: "Me too, Em. Felt bad for them, but raccoons in the basement? Not exactly part of the roommate agreement!"),
        Message(
            sender: .emma,
            time: "Today at 3:32 PM",
            body: "Definitely not! This is a story we'll be telling for ages."),
        Message(
            sender: .matt,
            time: "Today at 3:34 PM",
            body: "For sure! The legend of the basement raccoons begins!"),
        Message(
            sender: .emma,
            time: "Today at 3:36 PM",
            body: "Hey, Em, ever had a raccoon encounter before? This is a first for me."),
        Message(
            sender: .emma,
            time: "Today at 3:38 PM",
            body: "Nah, only seen raccoons in viral videos being all sneaky. Never thought they'd be our new neighbors!"),
        Message(
            sender: .matt,
            time: "Today at 3:40 PM",
            body: "Haha, right? Let's hope they don't start planning raccoon heists or something. 🦝🕵️‍♂️"),
        Message(
            sender: .emma,
            time: "Today at 3:42 PM",
            body: "Seriously, Matt! Let's hope they're just passing through and not setting up camp."),
        Message(
            sender: .matt,
            time: "Today at 3:44 PM",
            body: "Agreed. Otherwise, we might need a raccoon-sized eviction notice."),
        Message(
            sender: .emma,
            time: "Today at 3:46 PM",
            body: "Dear Raccoons, you're evicted. Please find another spot to trash."),
        Message(
            sender: .matt,
            time: "Today at 3:48 PM",
            body: "😂 We could sign it 'The Unofficial Raccoon Landlords.'"),
        Message(
            sender: .emma,
            time: "Today at 3:50 PM",
            body: "Classic! So, do you think they're still down there, partying it up?"),
        Message(
            sender: .matt,
            time: "Today at 3:52 PM",
            body: "It's possible! We should name our basement 'The Raccoon Rave Cave.'"),
        Message(
            sender: .emma,
            time: "Today at 3:54 PM",
            body: "Haha, I can see it now. Raccoon DJ with tiny sunglasses."),
        Message(
            sender: .matt,
            time: "Today at 3:56 PM",
            body: "Dropping some sick beats for the raccoon crowd! 🎧🦝🎉"),
        Message(
            sender: .emma,
            time: "Today at 3:58 PM",
            body: "Maybe they're just rehearsing for their next hit single: 'Trash Can Boogie.'"),
        Message(
            sender: .matt,
            time: "Today at 4:00 PM",
            body: "It'll be a chart-topper for sure! Wonder if we can get them to sign autographs?"),
        Message(
            sender: .emma,
            time: "Today at 4:02 PM",
            body: "If we do, we could start a 'Raccoon Fan Club.'"),
        Message(
            sender: .matt,
            time: "Today at 4:04 PM",
            body: "And they can have their own TikTok: 'The Basement Bandits.'"),
        Message(
            sender: .emma,
            time: "Today at 4:06 PM",
            body: "Our raccoon roommates are the key to viral fame!"),
        Message(
            sender: .matt,
            time: "Today at 4:08 PM",
            body: "Forget influencer marketing; we've got raccoon influencers!"),
        Message(
            sender: .emma,
            time: "Today at 4:10 PM",
            body: "If they're gonna be famous, we should at least ask for their rent."),
        Message(
            sender: .matt,
            time: "Today at 4:12 PM",
            body: "Payment in acorns, perhaps? 🌰💰"),
        Message(
            sender: .emma,
            time: "Today at 4:14 PM",
            body: "Haha, they might go bankrupt! But seriously, I hope the professionals can safely relocate them tomorrow."),
        Message(
            sender: .matt,
            time: "Today at 4:16 PM",
            body: "Me too. Let's just hope they don't come back with their raccoon friends looking for an encore performance."),
        Message(
            sender: .emma,
            time: "Today at 4:18 PM",
            body: "Agreed, Matt. One raccoon party in the basement is more than enough excitement for us."),
        Message(
            sender: .matt,
            time: "Today at 4:20 PM",
            body: "Totally. Let's just get our raccoon buddies a one-way ticket out of here!"),
        Message(
            sender: .emma,
            time: "Today at 4:22 PM",
            body: "And make sure they don't leave any raccoon graffiti behind!"),
        Message(
            sender: .matt,
            time: "Today at 4:24 PM",
            body: "Good call, Em. We don't need raccoon art decorating our walls. 🎨🦝"),
        Message(
            sender: .emma,
            time: "Today at 4:26 PM",
            body: "Well, on the bright side, our raccoon adventure will be a story to tell for years to come!"),
        Message(
            sender: .matt,
            time: "Today at 4:28 PM",
            body: "True, true. The legend of the basement raccoons will live on in our roommate history. 🦝✌️😄"),
        Message(
            sender: .emma,
            time: "Today at 4:30 PM",
            body: "So, what do we do in the meantime, Matt? Raccoon-themed movie night?"),
        Message(
            sender: .matt,
            time: "Today at 4:32 PM",
            body: "Haha, why not? We can watch all the raccoon-related films and become raccoon experts."),
        Message(
            sender: .emma,
            time: "Today at 4:34 PM",
            body: "Raccoon documentaries, here we come!"),
        Message(
            sender: .matt,
            time: "Today at 4:36 PM",
            body: "And we can do some raccoon research online. Maybe we'll discover their secret raccoon society."),
        Message(
            sender: .emma,
            time: "Today at 4:38 PM",
            body: "The Raccoon Illuminati, perhaps?"),
    ]
}
