# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# compile CXX with /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
CXX_FLAGS = -W -Wall -pedantic -Wno-non-virtual-dtor -Wno-long-long -Wwrite-strings -Wpointer-arith -Woverloaded-virtual -Wno-variadic-macros -Wshadow -pipe -Qunused-arguments -DGL_SILENCE_DEPRECATION -stdlib=libc++ -std=c++11  -O3 -DNDEBUG -fno-trapping-math -ftree-vectorize -fno-math-errno -O3 -DNDEBUG -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk   -std=gnu++11

CXX_DEFINES = -DG4LIB_BUILD_DLL -DG4UI_USE_TCSH

CXX_INCLUDES = -I/Users/elisa/Desktop/GEANT4/B2a/include -isystem /Applications/geant4_10_06_p01/source/analysis/g4tools/include -isystem /Applications/geant4_10_06_p01/source/analysis/accumulables/include -isystem /Applications/geant4_10_06_p01/source/analysis/csv/include -isystem /Applications/geant4_10_06_p01/source/analysis/factory/include -isystem /Applications/geant4_10_06_p01/source/analysis/hntools/include -isystem /Applications/geant4_10_06_p01/source/analysis/management/include -isystem /Applications/geant4_10_06_p01/source/analysis/root/include -isystem /Applications/geant4_10_06_p01/source/analysis/xml/include -isystem /Applications/geant4_10_06_p01/source/digits_hits/detector/include -isystem /Applications/geant4_10_06_p01/source/digits_hits/digits/include -isystem /Applications/geant4_10_06_p01/source/digits_hits/hits/include -isystem /Applications/geant4_10_06_p01/source/digits_hits/scorer/include -isystem /Applications/geant4_10_06_p01/source/digits_hits/utils/include -isystem /Applications/geant4_10_06_p01/source/error_propagation/include -isystem /Applications/geant4_10_06_p01/source/event/include -isystem /Applications/geant4_10_06_p01/source/externals/clhep/include -isystem /Applications/geant4_10_06_p01/source/externals/zlib/include -isystem /Applications/geant4.10.06-build/source/geometry/include -isystem /Applications/geant4_10_06_p01/source/geometry/biasing/include -isystem /Applications/geant4_10_06_p01/source/geometry/divisions/include -isystem /Applications/geant4_10_06_p01/source/geometry/magneticfield/include -isystem /Applications/geant4_10_06_p01/source/geometry/management/include -isystem /Applications/geant4_10_06_p01/source/geometry/navigation/include -isystem /Applications/geant4_10_06_p01/source/geometry/solids/Boolean/include -isystem /Applications/geant4_10_06_p01/source/geometry/solids/CSG/include -isystem /Applications/geant4_10_06_p01/source/geometry/solids/specific/include -isystem /Applications/geant4_10_06_p01/source/geometry/volumes/include -isystem /Applications/geant4.10.06-build/source/global/include -isystem /Applications/geant4_10_06_p01/source/global/HEPGeometry/include -isystem /Applications/geant4_10_06_p01/source/global/HEPNumerics/include -isystem /Applications/geant4_10_06_p01/source/global/HEPRandom/include -isystem /Applications/geant4_10_06_p01/source/global/management/include -isystem /Applications/geant4_10_06_p01/source/graphics_reps/include -isystem /Applications/geant4_10_06_p01/source/intercoms/include -isystem /Applications/geant4_10_06_p01/source/interfaces/GAG/include -isystem /Applications/geant4_10_06_p01/source/interfaces/basic/include -isystem /Applications/geant4_10_06_p01/source/interfaces/common/include -isystem /Applications/geant4_10_06_p01/source/materials/include -isystem /Applications/geant4_10_06_p01/source/parameterisations/gflash/include -isystem /Applications/geant4_10_06_p01/source/particles/adjoint/include -isystem /Applications/geant4_10_06_p01/source/particles/bosons/include -isystem /Applications/geant4_10_06_p01/source/particles/hadrons/barions/include -isystem /Applications/geant4_10_06_p01/source/particles/hadrons/ions/include -isystem /Applications/geant4_10_06_p01/source/particles/hadrons/mesons/include -isystem /Applications/geant4_10_06_p01/source/particles/leptons/include -isystem /Applications/geant4_10_06_p01/source/particles/management/include -isystem /Applications/geant4_10_06_p01/source/particles/shortlived/include -isystem /Applications/geant4_10_06_p01/source/particles/utils/include -isystem /Applications/geant4_10_06_p01/source/persistency/ascii/include -isystem /Applications/geant4_10_06_p01/source/persistency/mctruth/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/builders/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/decay/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/electromagnetic/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/factory/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/gamma_lepto_nuclear/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/hadron_elastic/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/hadron_inelastic/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/ions/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/limiters/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/constructors/stopping/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/lists/include -isystem /Applications/geant4_10_06_p01/source/physics_lists/util/include -isystem /Applications/geant4_10_06_p01/source/processes/biasing/management/include -isystem /Applications/geant4_10_06_p01/source/processes/biasing/generic/include -isystem /Applications/geant4_10_06_p01/source/processes/biasing/importance/include -isystem /Applications/geant4_10_06_p01/source/processes/cuts/include -isystem /Applications/geant4_10_06_p01/source/processes/decay/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/adjoint/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/processes/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/models/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/utils/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/management/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/molecules/management/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/dna/molecules/types/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/highenergy/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/lowenergy/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/muons/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/pii/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/polarisation/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/standard/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/utils/include -isystem /Applications/geant4_10_06_p01/source/processes/electromagnetic/xrays/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/cross_sections/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/management/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/abla/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/abrasion/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/binary_cascade/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/cascade/cascade/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/coherent_elastic/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/ablation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/evaporation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/fermi_breakup/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/fission/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/gem_evaporation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/handler/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/management/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/multifragmentation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/photon_evaporation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/de_excitation/util/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/em_dissociation/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/fission/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/im_r_matrix/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/inclxx/utils/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/inclxx/incl_physics/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/inclxx/interface/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/gamma_nuclear/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/lend/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/lepto_nuclear/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/management/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/particle_hp/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/parton_string/diffraction/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/parton_string/hadronization/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/parton_string/management/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/parton_string/qgsm/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/pre_equilibrium/exciton_model/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/qmd/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/quasi_elastic/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/radioactive_decay/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/rpg/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/theo_high_energy/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/models/util/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/processes/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/stopping/include -isystem /Applications/geant4_10_06_p01/source/processes/hadronic/util/include -isystem /Applications/geant4_10_06_p01/source/processes/management/include -isystem /Applications/geant4_10_06_p01/source/processes/optical/include -isystem /Applications/geant4_10_06_p01/source/processes/solidstate/phonon/include -isystem /Applications/geant4_10_06_p01/source/processes/solidstate/channeling/include -isystem /Applications/geant4_10_06_p01/source/processes/parameterisation/include -isystem /Applications/geant4_10_06_p01/source/processes/scoring/include -isystem /Applications/geant4_10_06_p01/source/processes/transportation/include -isystem /Applications/geant4_10_06_p01/source/readout/include -isystem /Applications/geant4_10_06_p01/source/run/include -isystem /Applications/geant4_10_06_p01/source/track/include -isystem /Applications/geant4_10_06_p01/source/tracking/include -isystem /Applications/geant4_10_06_p01/source/visualization/FukuiRenderer/include -isystem /Applications/geant4_10_06_p01/source/visualization/HepRep/include -isystem /Applications/geant4_10_06_p01/source/visualization/RayTracer/include -isystem /Applications/geant4_10_06_p01/source/visualization/Tree/include -isystem /Applications/geant4_10_06_p01/source/visualization/VRML/include -isystem /Applications/geant4_10_06_p01/source/visualization/XXX/include -isystem /Applications/geant4_10_06_p01/source/visualization/gMocren/include -isystem /Applications/geant4_10_06_p01/source/visualization/management/include -isystem /Applications/geant4_10_06_p01/source/visualization/modeling/include -isystem /Applications/geant4.10.06-build/source/externals/zlib 

