<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fc49d5a3-c459-4089-b0b6-a40402d62ee5(org.modelix.mps-rest-model-acess.mps-plugin.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="6KKKEIn3ulv">
    <property role="TrG5h" value="mps-plugin" />
    <property role="2DA0ip" value="../.." />
    <node concept="10PD9b" id="6KKKEIn3ulw" role="10PD9s" />
    <node concept="3b7kt6" id="6KKKEIn3ulx" role="10PD9s" />
    <node concept="398rNT" id="6KKKEIn3uly" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="6KKKEIn3ul_" role="1l3spd">
      <property role="TrG5h" value="enabler.home" />
    </node>
    <node concept="398rNT" id="6KKKEIn3ulA" role="1l3spd">
      <property role="TrG5h" value="mbeddr.github.core.home" />
    </node>
    <node concept="2sgV4H" id="6KKKEIn3ulz" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6KKKEIn3ul$" role="2JcizS">
        <ref role="398BVh" node="6KKKEIn3uly" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="6KKKEIn3ulV" role="1l3spN">
      <node concept="m$_wl" id="6KKKEIn3ulZ" role="39821P">
        <ref role="m_rDy" node="6KKKEIn3ulI" resolve="org.modelix.mps.rest.model.acess.mpsplugin" />
        <node concept="pUk6x" id="6KKKEIn3um0" role="pUk7w" />
        <node concept="398223" id="6KKKEInk1kh" role="39821P">
          <node concept="3_J27D" id="6KKKEInk1ki" role="Nbhlr">
            <node concept="3Mxwew" id="6KKKEInk1l2" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="6KKKEInk1l4" role="39821P">
            <node concept="55IIr" id="6KKKEInk1lP" role="2HvfZ0">
              <node concept="2Ry0Ak" id="6KKKEInk1mC" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1oqSG6gS27U" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="1oqSG6gS28y" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="6KKKEIn3ulI" role="3989C9">
      <property role="m$_wk" value="org.modelix.mps.rest.model.acess.mpsplugin" />
      <node concept="3_J27D" id="6KKKEIn3ulJ" role="m$_yQ">
        <node concept="3Mxwew" id="6KKKEIn3ulK" role="3MwsjC">
          <property role="3MwjfP" value="mps.plugin" />
        </node>
      </node>
      <node concept="3_J27D" id="6KKKEIn3ulL" role="m$_w8">
        <node concept="3Mxwew" id="6KKKEIn3ulM" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="6KKKEIn3ulN" role="m$_yh">
        <ref role="m$f5T" node="6KKKEIn3ulH" resolve="mps.plugin" />
      </node>
      <node concept="m$_yC" id="6KKKEIn3ulO" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="6KKKEIn3uGM" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5xhjlkpPhJu" resolve="jetbrains.mps.ide.httpsupport" />
      </node>
      <node concept="3_J27D" id="6KKKEIn3ulP" role="m_cZH">
        <node concept="3Mxwew" id="6KKKEIn3ulQ" role="3MwsjC">
          <property role="3MwjfP" value="mps.plugin" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6KKKEIn3ulH" role="3989C9">
      <property role="TrG5h" value="mps.plugin" />
      <node concept="1E1JtA" id="6KKKEIn3ulG" role="2G$12L">
        <property role="TrG5h" value="org.modelix.mps.rest.model.acess.plugin" />
        <property role="3LESm3" value="3257c0a0-131a-49aa-b7eb-4ec72ed06b33" />
        <node concept="55IIr" id="6KKKEIn3ulB" role="3LF7KH">
          <node concept="2Ry0Ak" id="6KKKEIn3ulC" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="1oqSG6gRUdQ" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
              <node concept="2Ry0Ak" id="1oqSG6gRUdV" role="2Ry0An">
                <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6KKKEIn3um1" role="3bR37C">
          <node concept="3bR9La" id="6KKKEIn3um2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="6KKKEIn3um3" role="3bR37C">
          <node concept="3bR9La" id="6KKKEIn3um4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6KKKEIn3um5" role="3bR37C">
          <node concept="3bR9La" id="6KKKEIn3um6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6pse5qHNhL7" resolve="jetbrains.mps.ide.httpsupport.manager" />
          </node>
        </node>
        <node concept="1BupzO" id="6KKKEIn3umb" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1oqSG6gRUeM" role="1HemKq">
            <node concept="55IIr" id="1oqSG6gRUeI" role="3LXTmr">
              <node concept="2Ry0Ak" id="1oqSG6gRUeJ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="1oqSG6gRUeK" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="1oqSG6gRUeL" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1oqSG6gRUeN" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tPuiMOCmBp" role="3bR37C">
          <node concept="3bR9La" id="4tPuiMOCmBq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJsP" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJsQ" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJsK" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJsL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJsM" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJsN" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJsO" role="2Ry0An">
                      <property role="2Ry0Am" value="annotations.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJsW" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJsX" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJsR" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJsS" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJsT" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJsU" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJsV" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin-stdlib-common.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJt3" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJt4" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJsY" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJsZ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJt0" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJt1" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJt2" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin-stdlib-jdk7.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJta" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJtb" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJt5" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJt6" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJt7" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJt8" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJt9" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin-stdlib-jdk8.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJth" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJti" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJtc" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJtd" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJte" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJtf" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJtg" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlin-stdlib.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJto" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJtp" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJtj" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJtk" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJtl" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJtm" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJtn" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-serialization-core-jvm.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJtv" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJtw" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJtq" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJtr" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJts" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJtt" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJtu" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-serialization-json-jvm.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJtA" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJtB" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJtx" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJty" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJtz" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJt$" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJt_" role="2Ry0An">
                      <property role="2Ry0Am" value="model-api-jvm.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7XcypZKMJtH" role="3bR37C">
          <node concept="1BurEX" id="7XcypZKMJtI" role="1SiIV1">
            <node concept="55IIr" id="7XcypZKMJtC" role="1BurEY">
              <node concept="2Ry0Ak" id="7XcypZKMJtD" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7XcypZKMJtE" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.mps.rest.model.acess.plugin" />
                  <node concept="2Ry0Ak" id="7XcypZKMJtF" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7XcypZKMJtG" role="2Ry0An">
                      <property role="2Ry0Am" value="model-server.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

