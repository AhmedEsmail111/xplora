import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:xplora/core/utils/assets.dart';

import '../../features/explore/domain/entities/galaxy.dart';
import '../../features/explore/domain/entities/planet.dart';

const languageKey = 'languageKey';
const userAge = 'userAge';
const userName = 'userName';
const uuid = Uuid();
final galaxies = <Galaxy>[
  Galaxy(
    id: uuid.v4(),
    name: 'Galaxy 1',
    description: 'Galaxy 1 description and some info',
    numberOfPlanets: 5,
    numberOfStars: 78,
    image: '',
    planets: planets,
  ),
  Galaxy(
    id: uuid.v4(),
    name: 'Galaxy 2',
    description: 'Galaxy 2 description and some info',
    numberOfPlanets: 5,
    numberOfStars: 37,
    image: '',
    planets: planets,
  ),
  Galaxy(
    id: uuid.v4(),
    name: 'Galaxy 3',
    description: 'Galaxy 3 description and some info',
    numberOfPlanets: 5,
    numberOfStars: 50,
    image: '',
    planets: planets,
  ),
  Galaxy(
    id: uuid.v4(),
    name: 'Galaxy 4',
    description: 'Galaxy 4 description and some info',
    numberOfPlanets: 5,
    numberOfStars: 63,
    image: '',
    planets: planets,
  ),
  Galaxy(
    id: uuid.v4(),
    name: 'Galaxy 5',
    description: 'Galaxy 5 description and some info',
    numberOfPlanets: 5,
    numberOfStars: 237,
    image: '',
    planets: planets,
  ),
];

final planets = <Planet>[
  Planet(
    id: uuid.v4(),
    name: 'Planet 1',
    description: 'some info about planet 1',
    images: images,
  ),
  Planet(
    id: uuid.v4(),
    name: 'planet 2  ',
    description: 'some info about planet 1',
    images: images,
  ),
  Planet(
    id: uuid.v4(),
    name: 'planet 3',
    description: 'some info about planet 1',
    images: images,
  ),
  Planet(
    id: uuid.v4(),
    name: 'planet 4',
    description: 'some info about planet 1',
    images: images,
  ),
  Planet(
    id: uuid.v4(),
    name: 'planet5',
    description: 'some info about planet 1',
    images: images,
  ),
  Planet(
    id: uuid.v4(),
    name: 'Planet 6',
    description: 'some info about planet 1',
    images: images,
  ),
];

const images = [
  optionsBackgroundImage,
  optionsBackgroundImage,
  optionsBackgroundImage,
  optionsBackgroundImage,
];
const roundedBorder8Radius = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(8),
  ),
);

const galaxiesItemBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(12),
  ),
);
