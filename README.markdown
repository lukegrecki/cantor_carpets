cantor_carpets
==============

Install
-------

    gem install cantor_carpets

Usage
-----

Each fractal (called a Carpet) is determined by a seed and a depth. The seed is a 
2D array that determines which squares are removed, and the depth determines the 
resolution of the image. The resulting image is a PNG.

    seed = Array2D.new(3, 3)

    seed.state = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
    carpet = Carpet.new(seed, 6)
    carpet.write_image('sierpenski.png')

![carpet](https://github.com/lukegrecki/cantor_carpets/raw/master/images/sierpenski.png)

    seed.state = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
    carpet = Carpet.new(seed, 6)
    carpet.write_image('dust.png')

![dust](https://github.com/lukegrecki/cantor_carpets/raw/master/images/dust.png)

    seed.state = [[0, 1, 0], [1, 1, 1], [0, 1, 0]]
    carpet = Carpet.new(seed, 6)
    carpet.write_image('cross.png')

![cross](https://github.com/lukegrecki/cantor_carpets/raw/master/images/cross.png)