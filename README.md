<picture>
  <source media="(prefers-color-scheme: dark)" srcset=".github/mark-dark.svg">
  <img alt="Dojo logo" align="right" width="120" src=".github/mark-light.svg">
</picture>

<a href="https://twitter.com/dojostarknet">
<img src="https://img.shields.io/twitter/follow/dojostarknet?style=social"/>
</a>
<a href="https://github.com/dojoengine/dojo">
<img src="https://img.shields.io/github/stars/dojoengine/dojo?style=social"/>
</a>

[![discord](https://img.shields.io/badge/join-dojo-green?logo=discord&logoColor=white)](https://discord.gg/PwDa2mKhR4)
[![Telegram Chat][tg-badge]][tg-url]

[tg-badge]: https://img.shields.io/endpoint?color=neon&logo=telegram&label=chat&style=flat-square&url=https%3A%2F%2Ftg.sumanjay.workers.dev%2Fdojoengine
[tg-url]: https://t.me/dojoengine

# Dojo Starter: Official Guide

The official Dojo Starter guide, the quickest and most streamlined way to get your Dojo Autonomous World up and running. This guide will assist you with the initial setup, from cloning the repository to deploying your world.

Read the full tutorial [here](https://book.dojoengine.org/cairo/hello-dojo.html)

---

## Contribution

This starter project is a constant work in progress and contributions are greatly appreciated!

1. **Report a Bug**

    - If you think you have encountered a bug, and we should know about it, feel free to report it [here](https://github.com/dojoengine/dojo-starter/issues) and we will take care of it.

2. **Request a Feature**

    - You can also request for a feature [here](https://github.com/dojoengine/dojo-starter/issues), and if it's viable, it will be picked for development.

3. **Create a Pull Request**
    - It can't get better then this, your pull request will be appreciated by the community.

For any other questions, feel free to reach out to us [here](https://dojoengine.org/contact).

Happy coding!

## 实操

```shell
mcd dojo
sozo init
cd dojo/
ls
c
sozo build
katana --disable-fee
sozo migrate --name test
torii --world 0x75ae61337cea0e837854aad2858813baa0c87414f9204cff9beb5a468a00aa4
sozo execute 0x3f4fdb3b4a1ecd7df5c08246dcaa2e5602572a33e694793c3c64331c36eaa60 spawn
sozo test
```

### 实操记录

```shell
katana --disable-fee



██╗  ██╗ █████╗ ████████╗ █████╗ ███╗   ██╗ █████╗
██║ ██╔╝██╔══██╗╚══██╔══╝██╔══██╗████╗  ██║██╔══██╗
█████╔╝ ███████║   ██║   ███████║██╔██╗ ██║███████║
██╔═██╗ ██╔══██║   ██║   ██╔══██║██║╚██╗██║██╔══██║
██║  ██╗██║  ██║   ██║   ██║  ██║██║ ╚████║██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝


PREDEPLOYED CONTRACTS
==================

| Contract        | Fee Token
| Address         | 0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7
| Class Hash      | 0x02a8846878b6ad1f54f6ba46f5f40e11cee755c677f130b2c4b60566c9003f1f

....

PREFUNDED ACCOUNTS
==================

| Account address |  0x6162896d1d7ab204c7ccac6dd5f8e9e7c25ecd5ae4fcb4ad32e57786bb46e03
| Private key     |  0x1800000000300000180000000000030000000000003006001800006600
| Public key      |  0x2b191c2f3ecf685a91af7cf72a43e7b90e2e41220175de5c4f7498981b10053

......

ACCOUNTS SEED
=============
0


🚀 JSON-RPC server started: http://0.0.0.0:5050


dojo on  master via 🅒 base 
➜ sozo migrate --name test

Migration account: 0x6162896d1d7ab204c7ccac6dd5f8e9e7c25ecd5ae4fcb4ad32e57786bb46e03

World name: test

[1] 🌎 Building World state....
  > No remote World found
[2] 🧰 Evaluating Worlds diff....
  > Total diffs found: 5
[3] 📦 Preparing for migration....
  > Total items to be migrated (5): New 5 Update 0
  
# Executor
  > Contract address: 0x504ea10da4f16fe5bdca5869a094ce7ab1e64a708291dcef1f1342f9e993538
# Base Contract
  > Class Hash: 0x7a1d3842893fd7b1ccc28f766f0c4ef29fdffeb31efb52d082aac3c3b06d0da
# World
  > Contract address: 0x75ae61337cea0e837854aad2858813baa0c87414f9204cff9beb5a468a00aa4
  > Failed to set World metadata:
hyper client error `error trying to connect: tcp connect error: Connection refused (os error 61)`
# Models (2)
dojo_starter::models::moves::moves
  > Class hash: 0x16fc5170217a31109ee7518e30a6a7c3fdfb7eb2ddc6a2bd5144e2cef834f9a
dojo_starter::models::position::position
  > Class hash: 0x7ac9663358fb7959c0c817b1cacf71695ed8bf6df2714346c8d541609ae601f
  > Registered at: 0x60c45ceb01095fead1467da6a0aca750e54424a67fd19de3a2c7173ca4cc8a3
# Contracts (1)
dojo_starter::systems::actions::actions
  > Contract address: 0x3f4fdb3b4a1ecd7df5c08246dcaa2e5602572a33e694793c3c64331c36eaa60

🎉 Successfully migrated World at address 0x75ae61337cea0e837854aad2858813baa0c87414f9204cff9beb5a468a00aa4

✨ Updating manifest.json...

✨ Done.

dojo on  master [!] via 🅒 base 
➜ torii --world 0x75ae61337cea0e837854aad2858813baa0c87414f9204cff9beb5a468a00aa4
2024-01-19T05:15:26.123745Z  INFO torii::cli: Starting torii endpoint: http://0.0.0.0:8080
2024-01-19T05:15:26.123764Z  INFO torii::cli: Serving Graphql playground: http://0.0.0.0:8080/graphql

2024-01-19T05:15:26.132640Z  INFO torii_core::engine: processed block: 0
2024-01-19T05:15:26.133584Z  INFO torii_core::engine: processed block: 1
2024-01-19T05:15:26.134271Z  INFO torii_core::engine: processed block: 2
2024-01-19T05:15:26.134457Z  INFO torii_core::engine: processed block: 3
2024-01-19T05:15:26.134668Z  INFO torii_core::engine: processed block: 4
2024-01-19T05:15:26.135145Z  INFO torii_core::engine: processed block: 5
2024-01-19T05:15:26.135369Z  INFO torii_core::engine: processed block: 6
2024-01-19T05:15:26.135545Z  INFO torii_core::engine: processed block: 7
2024-01-19T05:15:26.157874Z  INFO torii_core::processors::register_model: Registered model: Moves
2024-01-19T05:15:26.173867Z  INFO torii_core::processors::register_model: Registered model: Position
2024-01-19T05:15:26.174711Z  INFO torii_core::engine: processed block: 8
2024-01-19T05:15:26.175341Z  INFO torii_core::engine: processed block: 9
2024-01-19T05:15:26.175840Z  INFO torii_core::engine: processed block: 10
2024-01-19T05:20:16.966067Z  INFO torii_core::processors::store_set_record: store set record: Moves
2024-01-19T05:20:16.968266Z  INFO torii_core::processors::store_set_record: store set record: Position
2024-01-19T05:20:16.969090Z  INFO torii_core::engine: processed block: 11

sozo execute 0x3f4fdb3b4a1ecd7df5c08246dcaa2e5602572a33e694793c3c64331c36eaa60 spawn
Transaction hash: 0x6c10aa6de1a7b68047d357175ad5baa5154382991a884292805305cf02cc5b8

dojo on  master [!] via 🅒 base took 6.0s 
➜ sozo test
running 5 tests
test dojo_starter::models::position::tests::test_vec_is_zero ... ok (gas usage est.: 4980)
test dojo_starter::models::position::tests::test_vec_is_equal ... ok (gas usage est.: 2000)
test dojo_starter::models::moves::tests::test_direction_into ... ok (gas usage est.: 352790)
test dojo_starter::tests::test_world::tests::test_spawn ... ok (gas usage est.: 9710374)
test dojo_starter::tests::test_world::tests::test_move ... ok (gas usage est.: 22585374)
test result: ok. 5 passed; 0 failed; 0 ignored; 0 filtered out;

```

## 更多

- <http://0.0.0.0:8080/graphql>
- <https://book.cairo-lang.org/title-page.html>
- <https://book.starknet.io/title-page.html>
- <https://foundry-rs.github.io/starknet-foundry/index.html>
- <https://book.dojoengine.org/cairo/hello-dojo.html>
