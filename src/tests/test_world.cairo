#[cfg(test)]
mod tests {
    use core::traits::Into;
    use starknet::class_hash::Felt252TryIntoClassHash;

    // import world dispatcher
    use dojo::world::{IWorldDispatcher, IWorldDispatcherTrait};

    // import test utils
    use dojo::test_utils::{spawn_test_world, deploy_contract};

    // import test utils
    use dojo_starter::{
        systems::{actions::{actions, IActionsDispatcher, IActionsDispatcherTrait}},
        models::{position::{Position, Vec2, position}, moves::{Moves, Direction, moves}}
    };


    #[test]
    #[available_gas(30000000)]
    fn test_move() {
        // caller
        let caller = starknet::contract_address_const::<0x0>();

        // models
        let mut models = array![position::TEST_CLASS_HASH, moves::TEST_CLASS_HASH];

        // deploy world with models
        let world = spawn_test_world(models);

        // deploy systems contract
        let contract_address = world
            .deploy_contract('salt', actions::TEST_CLASS_HASH.try_into().unwrap());
        let actions_system = IActionsDispatcher { contract_address };

        // call spawn()
        actions_system.spawn();

        // call move with direction right
        actions_system.move(Direction::Right);

        // Check world state
        let moves = get!(world, caller, Moves);

        // casting right direction
        let right_dir_felt: felt252 = Direction::Right.into();

        // check moves
        assert(moves.remaining == 99, 'moves is wrong');

        // check last direction
        assert(moves.last_direction.into() == right_dir_felt, 'last direction is wrong');

        // get new_position
        let new_position = get!(world, caller, Position);

        // check new position x
        assert(new_position.vec.x == 11, 'position x is wrong');

        // check new position y
        assert(new_position.vec.y == 10, 'position y is wrong');

        actions_system.move(Direction::Up);

        let up_dir_felt: felt252 = Direction::Up.into();
        let (moves, position) = get!(world, caller, (Moves, Position));

        assert(moves.remaining == 98, 'moves is wrong');
        assert(moves.last_direction.into() == up_dir_felt, 'last direction is wrong');

        assert(position.vec.x == 11, 'position x is wrong');
        assert(position.vec.y == 9, 'position y is wrong');
    }


    #[test]
    #[available_gas(30000000)]
    fn test_spawn() {
        // caller
        let caller = starknet::contract_address_const::<0x0>();

        // models
        let mut models = array![position::TEST_CLASS_HASH, moves::TEST_CLASS_HASH];

        // deploy world with models
        let world = spawn_test_world(models);

        // deploy systems contract
        let contract_address = world
            .deploy_contract('salt', actions::TEST_CLASS_HASH.try_into().unwrap());
        let actions_system = IActionsDispatcher { contract_address };

        // call spawn()
        actions_system.spawn();

        let (moves, position) = get!(world, caller, (Moves, Position));

        assert(moves.remaining == 100, 'remaining is error');
        assert(moves.last_direction.into() == 0, 'last_direction is error');
        assert(position.vec.x == 10, 'position x is error');
        assert(position.vec.y == 10, 'position y is error');
    }
}
