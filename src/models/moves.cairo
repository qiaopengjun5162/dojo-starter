use starknet::ContractAddress;

#[derive(Model, Drop, Serde)]
struct Moves {
    #[key]
    player: ContractAddress,
    remaining: u8,
    last_direction: Direction
}

#[derive(Serde, Copy, Drop, Introspect)]
enum Direction {
    None,
    Left,
    Right,
    Up,
    Down,
}

impl DirectionIntoFelt252 of Into<Direction, felt252> {
    fn into(self: Direction) -> felt252 {
        match self {
            Direction::None => 0,
            Direction::Left => 1,
            Direction::Right => 2,
            Direction::Up => 3,
            Direction::Down => 4,
        }
    }
}

#[cfg(test)]
mod tests {
    use core::traits::Into;
    use super::Direction;

    #[test]
    #[available_gas(100_000_000_000)]
    fn test_direction_into() {
        assert_eq!(Direction::None.into(), 0);
        assert_eq!(Direction::Left.into(), 1);
        assert_eq!(Direction::Right.into(), 2);
        assert_eq!(Direction::Up.into(), 3);
        assert_eq!(Direction::Down.into(), 4);
    }
}
