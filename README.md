# Led driver
## Description
* LEDがチカチカします
* LEDを振ったり、目をキョロキョロさせると円が浮かび上がります
* 動画はこんな感じ
  * https://youtu.be/MILlViRW9so
## Requirements
* Raspberry Pi3
* LED * 7
* 10k[ohm]抵抗 * 7
* ブレッドボード
* ジャンパ線 * 9
## Installation
1. LEDのカソードとGNDの間に抵抗を挟む
1. LEDのアノードをそれぞれRaspberryPi3のGPIOピン21, 20, 16, 26, 19, 13, 6と接続
1. 以下のコマンドを実行する
```
git clone https://github.com/Kuwamai/led_driver.git
cd led_driver
sh myled.sh
```
## License
This repository is licensed under the GPLv3 license, see [LICENSE](./LICENSE).
