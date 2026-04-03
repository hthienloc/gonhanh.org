# Changelog

## [0.2.0](https://github.com/hthienloc/gonhanh.org/compare/gonhanh-core-v0.1.0...gonhanh-core-v0.2.0) (2026-04-03)


### Features

* add "fomo" to English dictionary and foreign consonant test ([7142a0b](https://github.com/hthienloc/gonhanh.org/commit/7142a0b87fe3cdf6c670e1354c8853f62a492dfa))
* add option to allow foreign consonants (z, w, j, f) as valid initials ([#233](https://github.com/hthienloc/gonhanh.org/issues/233)) ([2abdcd0](https://github.com/hthienloc/gonhanh.org/commit/2abdcd0fed425b5f5cb67ddeca156ca8c879e51c))
* allow newlines in shortcut replacements ([#343](https://github.com/hthienloc/gonhanh.org/issues/343)) ([63c6b86](https://github.com/hthienloc/gonhanh.org/commit/63c6b863ec5d0d94706fe1303129e8d1b5a2b79b))
* bypass Telex/VNI when modifier or Space held ([#307](https://github.com/hthienloc/gonhanh.org/issues/307)) ([0b70f9a](https://github.com/hthienloc/gonhanh.org/commit/0b70f9afb49571558ef5773f6f74f3d0c0084f94))
* **engine:** dictionary-based auto-restore using Hunspell Vietnamese dictionaries ([#270](https://github.com/hthienloc/gonhanh.org/issues/270)) ([8872fd5](https://github.com/hthienloc/gonhanh.org/commit/8872fd5292069290b85c6b9592f53f43d2349093))
* unify skip_w_shortcut to block W→Ư at all positions ([#317](https://github.com/hthienloc/gonhanh.org/issues/317)) ([72b50c8](https://github.com/hthienloc/gonhanh.org/commit/72b50c87097ce4a11273715dbc5c04b746978b4e))


### Bug Fixes

* **auto-restore:** keep buffer when ee revert produces valid English word ([71055b4](https://github.com/hthienloc/gonhanh.org/commit/71055b44df15aa4f785781df8d0bb6909304493c))
* **auto-restore:** keep buffer when ss/ff revert produces valid English word ([#337](https://github.com/hthienloc/gonhanh.org/issues/337)) ([ca67e52](https://github.com/hthienloc/gonhanh.org/commit/ca67e52ce2145cdbdb94533e5a8ef2f68b601dc1))
* block circumflex on invalid diphthong V1+tone+V2+V2 pattern ([0fcdd5d](https://github.com/hthienloc/gonhanh.org/commit/0fcdd5d16c354eb75b18141e52222767ed5d9470))
* **engine:** auto-restore "hiss" should return "his" ([#280](https://github.com/hthienloc/gonhanh.org/issues/280)) ([eccea30](https://github.com/hthienloc/gonhanh.org/commit/eccea303b736e82080952dd94684a3c16b5c3ddb))
* **engine:** auto-restore "perrmission" should return "permission" ([#281](https://github.com/hthienloc/gonhanh.org/issues/281)) ([061bcf4](https://github.com/hthienloc/gonhanh.org/commit/061bcf44bd8a2992887ba155827deb165f5764d2))
* **engine:** auto-restore incorrectly restores valid Vietnamese patterns with medial W modifier (banwfg → bằng) ([#263](https://github.com/hthienloc/gonhanh.org/issues/263)) ([0a52132](https://github.com/hthienloc/gonhanh.org/commit/0a52132cd9c05df9f27f8b84b459d8d3160a14e8))
* **engine:** buffer not restored after break key + backspace ([62b7b67](https://github.com/hthienloc/gonhanh.org/commit/62b7b670cb9716fe4a2647e404ca576312e8b351))
* **engine:** collapse double vowel from backspace+retype in auto-restore mode ([#289](https://github.com/hthienloc/gonhanh.org/issues/289)) ([5749d44](https://github.com/hthienloc/gonhanh.org/commit/5749d44a371f06cfdee071d9cde9d4cb4dd07ea6))
* **engine:** collapse double vowel using dict priority in auto-restore ([1e29245](https://github.com/hthienloc/gonhanh.org/commit/1e292451bbaaa7aac883daa8b3d7df56f66974db))
* **engine:** correct backspace count in w-as-vowel revert for foreign words ([f0d506c](https://github.com/hthienloc/gonhanh.org/commit/f0d506cab91a6da86af76082d482e9dc73c081c4))
* **engine:** delayed circumflex incorrectly re-applied after revert when typing mark key ([#248](https://github.com/hthienloc/gonhanh.org/issues/248)) ([609cb4a](https://github.com/hthienloc/gonhanh.org/commit/609cb4ad277b0921b2c4d625fb2ad1bde5c24b80))
* **engine:** delayed circumflex incorrectly reverts when followed by tone key (hojpow → họjpow instead of hợp) ([#276](https://github.com/hthienloc/gonhanh.org/issues/276)) ([e407afc](https://github.com/hthienloc/gonhanh.org/commit/e407afcb8e5c5396bf6402e72246b78a95ab77ae))
* **engine:** handle delayed circumflex for words with 3 vowels like "xuất" ([#260](https://github.com/hthienloc/gonhanh.org/issues/260)) ([15fe625](https://github.com/hthienloc/gonhanh.org/commit/15fe625e0bbcb108c55be8e1326492a3b01c698d))
* **engine:** horn modifier incorrectly applied to 'u' in "Qu-" initial pattern ([#244](https://github.com/hthienloc/gonhanh.org/issues/244)) ([a2c52e9](https://github.com/hthienloc/gonhanh.org/commit/a2c52e9c1042b8c757176de3b52672405c74d579))
* **engine:** horn on 'u' lost after space + backspace in "dươ" pattern ([e2bd874](https://github.com/hthienloc/gonhanh.org/commit/e2bd87412eceff5a854114e8c13847d5976c9add))
* **engine:** improve circumflex and vowel pattern handling ([#265](https://github.com/hthienloc/gonhanh.org/issues/265)) ([e321f03](https://github.com/hthienloc/gonhanh.org/commit/e321f035e38b2942166d13e0a2ffa45c73cf761e))
* **engine:** invalidate circumflex vowel + k final for auto-restore ([a349875](https://github.com/hthienloc/gonhanh.org/commit/a3498759f6b1a1b8c852fd6e55e058e47be700ba))
* **engine:** multi-word chained restore via continuous backspace ([a0e6a82](https://github.com/hthienloc/gonhanh.org/commit/a0e6a82387afdf8e22fc38e912d0dcf8184fec01))
* **engine:** prevent capacity overflow panic in buffer rebuild functions ([#277](https://github.com/hthienloc/gonhanh.org/issues/277)) ([5e87af5](https://github.com/hthienloc/gonhanh.org/commit/5e87af53dacdcaf58c9519374ec5ca3c91a4f0ad))
* **engine:** prevent false stroke after circumflex revert on d-initial words ([0caaf01](https://github.com/hthienloc/gonhanh.org/commit/0caaf01b7eda327e7d736920a230da4991f4368c))
* **engine:** raw_input out of sync after auto-restore + backspace ([#305](https://github.com/hthienloc/gonhanh.org/issues/305)) ([87c7de8](https://github.com/hthienloc/gonhanh.org/commit/87c7de8a6d02a120f6622a453b7247e16844c187))
* **engine:** recognize remove modifier 'z' after space+delete restore ([#256](https://github.com/hthienloc/gonhanh.org/issues/256)) ([6e69fca](https://github.com/hthienloc/gonhanh.org/commit/6e69fcac3a2fde009d0fce0bb5d57cbb86f41178))
* **engine:** reset auto-capitalize state on cursor change (paste/click) ([#279](https://github.com/hthienloc/gonhanh.org/issues/279)) ([5cd04f4](https://github.com/hthienloc/gonhanh.org/commit/5cd04f443f4f4631a901dc8643433785ed481d03))
* **engine:** standalone Đ incorrectly auto-restored to DD on break key ([#247](https://github.com/hthienloc/gonhanh.org/issues/247)) ([#249](https://github.com/hthienloc/gonhanh.org/issues/249)) ([a1dc615](https://github.com/hthienloc/gonhanh.org/commit/a1dc6155c9180ca599a899b443f67b12f25f8c4b))
* **engine:** stroke modifier not recognized after backspace-after-space restore ([#314](https://github.com/hthienloc/gonhanh.org/issues/314)) ([0dc98c2](https://github.com/hthienloc/gonhanh.org/commit/0dc98c2400fa13f95c50eb0cb517311f47165b9b))
* **engine:** triple-O words with mark before final consonant not working (booofng → boofng instead of boòng) ([#269](https://github.com/hthienloc/gonhanh.org/issues/269)) ([fff7e1a](https://github.com/hthienloc/gonhanh.org/commit/fff7e1a55d65b914d7fc32d4562d03b7efc722e7))
* handle telex double restore when buffer is valid english word ([444bf79](https://github.com/hthienloc/gonhanh.org/commit/444bf7911c98318d274f3dd38c044056c3f9b4b8))
* improve auto-restore for tone+doubled vowel patterns ([999acd3](https://github.com/hthienloc/gonhanh.org/commit/999acd3346dc13536ecb570ae85e321d09073e9f))
* prefix unused variable with underscore in test ([221fa38](https://github.com/hthienloc/gonhanh.org/commit/221fa38f40a293874f293f550093f941dc0dead7))
* remove short words from english dict to reduce false restores ([822c916](https://github.com/hthienloc/gonhanh.org/commit/822c91614afc71c62c05e50626acb05876b7c5c1))
* replace unstable LazyLock with once_cell for better compatibility ([aaad380](https://github.com/hthienloc/gonhanh.org/commit/aaad380a42508aa2b80690bd9d16a50a347471fb))
* rustfmt formatting issues in dictionary and english_dict ([b257012](https://github.com/hthienloc/gonhanh.org/commit/b257012d4213619dd94b18d0dd2fbeee95dcc73c))
* **shortcuts:** support special characters from Option-modified keys (Issue [#275](https://github.com/hthienloc/gonhanh.org/issues/275)) ([#285](https://github.com/hthienloc/gonhanh.org/issues/285)) ([027fe3a](https://github.com/hthienloc/gonhanh.org/commit/027fe3a5187431036714e751c0071345a6915e8d))
* support multi-char consonant clusters in partial restore ([47f618a](https://github.com/hthienloc/gonhanh.org/commit/47f618ada4775264f5e93555e8be0f6b193dfcd4))
* use AXObserver for event-driven Spotlight detection ([#241](https://github.com/hthienloc/gonhanh.org/issues/241)) ([5fd3885](https://github.com/hthienloc/gonhanh.org/commit/5fd3885e90b1e87e6e95816efe619a6867cc78c1))
