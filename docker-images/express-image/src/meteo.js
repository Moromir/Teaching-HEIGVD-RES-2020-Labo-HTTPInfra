import Chance from "chance";

let chance = Chance();

/**
 * Generates random weather stats.
*/
export default () => {
    let array = [];
    let amount = chance.integer({
        min: 1,
        max: 20
    });

    let temperature = chance.integer({
        min: -50,
        max: 50
    });
    
    for (let i = 0; i < amount; i++) {
        array.push({
            location: {
                name: chance.city(),
                country: chance.country({ full: true }),
                coordinates: chance.coordinates(),
                altitude: chance.altitude()
            },
            temperature: temperature,
            timestamp: chance.timestamp()
        });
    }

    return array;
}