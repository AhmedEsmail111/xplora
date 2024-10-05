import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uuid/uuid.dart';
import 'package:xplora/features/explore/presentation/manager/planets/planets_state.dart';

import '../../../../../core/utils/assets.dart';
import '../../../domain/entities/planet.dart';

const uuid = Uuid();

class PlanetsCubit extends Cubit<PlanetsStates> {
  final BuildContext context;
  PlanetsCubit(this.context) : super(PlanetsInitial());

  static PlanetsCubit of(BuildContext context) => BlocProvider.of(context);
  AppLocalizations get locale => AppLocalizations.of(context)!;

  List<Planet> get planets => [
        Planet(
          id: uuid.v4(),
          name: 'Tyc 8998 760 1 b',
          nickName: 'super Jupiter',
          description: locale.super_jupiter_desc,
          image3d: planetJupiter3d,
          imageNormal: jupiterImageNormal,
          type: locale.type,
          discoveryDate: locale.super_jupiter_discovery,
          size: locale.super_jupiter_size,
          link: locale.super_jupiter_link,
          temperature: locale.super_jupiter_temp,
          scientificInterest: locale.super_jupiter_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Gj 15 A b',
          nickName: 'Crimson Swirl',
          description: locale.crimson_swirl_desc,
          imageNormal: crimsonImageNormal,
          image3d: crimsonPlanet3d,
          type: locale.type,
          discoveryDate: locale.crimson_swirl_discovery,
          size: locale.crimson_swirl_size,
          link: 'https://science.nasa.gov/exoplanet-catalog/gj-15-a-b/',
          temperature: locale.crimson_swirl_temp,
          scientificInterest: locale.crimson_swirl_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'WASP 96 b',
          nickName: ' Mystic Orange Sphere',
          description: locale.mystic_range_desc,
          imageNormal: mysticOrangeNormal,
          image3d: mysticOrange3d,
          type: locale.type,
          discoveryDate: '2014',
          size: locale.mystic_range_size,
          link: 'https://science.nasa.gov/exoplanet-catalog/wasp-96-b/',
          temperature: locale.mystic_range_temp,
          scientificInterest: locale.mystic_range_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: ' TrES 2 b ',
          nickName: 'Inferno Eclipse',
          description: locale.inferno_eclipse_desc,
          imageNormal: infernoEclipseNormal,
          image3d: infernoEclipse3d,
          type: locale.type,
          discoveryDate: '2006',
          size: locale.inferno_eclipse_size,
          link: 'https://science.nasa.gov/exoplanet-catalog/tres-2-b/',
          temperature: locale.inferno_eclipse_temp,
          scientificInterest: locale.inferno_eclipse_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Gj 436 b',
          nickName: 'Nebula Rose',
          description: locale.nebula_rose_desc,
          imageNormal: nubelaRoseNormal,
          image3d: nubelaRose3d,
          type: locale.type,
          discoveryDate: '2004',
          size: locale.nebula_rose_size,
          link: 'https://science.nasa.gov/exoplanet-catalog/gj-436-b/',
          temperature: locale.nebula_rose_temp,
          scientificInterest: locale.nubela_rose_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'H D 189733 b',
          nickName: 'Mystic blue',
          description: locale.mystic_blue_desc,
          imageNormal: mysticBlueNormal,
          image3d: mysticBlue3d,
          type: locale.type,
          discoveryDate: '2005',
          size: locale.mystic_blue_size,
          link: 'https://science.nasa.gov/exoplanet-catalog/hd-189733-b/',
          temperature: locale.mystic_blue_temp,
          scientificInterest: locale.mystic_blue_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Kepler-442 b',
          nickName: 'Earth-like',
          description: locale.kepler_442_dec,
          imageNormal: kepler442bNormal,
          image3d: kepler442b3d,
          type: locale.type,
          discoveryDate: '2015',
          size: locale.kepler_442_size,
          link:
              'https://exoplanets.nasa.gov/exoplanet-catalog/7433/kepler-442-b/',
          temperature: locale.kepler_442_temp,
          scientificInterest: locale.kepler_442_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Kepler-186 f',
          nickName: "Earth's cousin",
          description: locale.kepler_186_dec,
          imageNormal: kepler_186fNormal,
          image3d: kepler_186f3d,
          type: locale.type,
          discoveryDate: '2014',
          size: locale.kepler_186_size,
          link:
              'https://exoplanets.nasa.gov/exoplanet-catalog/7635/kepler-186-f/',
          temperature: locale.kepler_186_temp,
          scientificInterest: locale.kepler_186_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'TRAPPIST-1 d',
          nickName: 'Serenity',
          description: locale.trappist_1d_dec,
          imageNormal: trappistNormal,
          image3d: trappist1d3d,
          type: locale.type,
          discoveryDate: '2017',
          size: locale.trappist_1d_size,
          link:
              'https://exoplanets.nasa.gov/exoplanet-catalog/7699/trappist-1-d/',
          temperature: locale.trappist_1d_temp,
          scientificInterest: locale.trappist_1d_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Kepler-22 b',
          nickName: 'Oceanus',
          description: locale.kepler_22b_1d_dec,
          imageNormal: kepler22bNormal,
          image3d: kepler22b3d,
          type: locale.type,
          discoveryDate: '2011',
          size: locale.kepler_22b_1d_size,
          link:
              'https://exoplanets.nasa.gov/exoplanet-catalog/7414/kepler-22-b/',
          temperature: locale.kepler_22b_1d_temp,
          scientificInterest: locale.kepler_22b_1d_scien,
        ),
        Planet(
          id: uuid.v4(),
          name: 'Kepler-452 b',
          nickName: 'Earth’s older cousin',
          description: locale.kepler_452_dec,
          imageNormal: kepler452Normal,
          image3d: kepler452b3d,
          type: locale.type,
          discoveryDate: '2015',
          size: locale.kepler_452_size,
          link:
              'https://exoplanets.nasa.gov/exoplanet-catalog/7456/kepler-452-b/',
          temperature: locale.kepler_452_temp,
          scientificInterest: locale.kepler_452_scien,
        ),
      ];
}
