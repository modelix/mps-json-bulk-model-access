<?xml version="1.0" encoding="UTF-8"?>
<solution name="org.modelix.mps.json.bulk.model.access.plugin" uuid="3257c0a0-131a-49aa-b7eb-4ec72ed06b33" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="lib" />
    </modelRoot>
    <modelRoot contentPath="${module}/lib" type="java_classes">
      <sourceRoot location="annotations.jar" />
      <sourceRoot location="kotlin-stdlib-common.jar" />
      <sourceRoot location="kotlin-stdlib-jdk7.jar" />
      <sourceRoot location="kotlin-stdlib-jdk8.jar" />
      <sourceRoot location="kotlin-stdlib.jar" />
      <sourceRoot location="kotlinx-serialization-core-jvm.jar" />
      <sourceRoot location="kotlinx-serialization-json-jvm.jar" />
      <sourceRoot location="model-api-jvm.jar" />
      <sourceRoot location="model-server.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/annotations.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-common.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-jdk7.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib-jdk8.jar" />
    <stubModelEntry path="${module}/lib/kotlin-stdlib.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-serialization-core-jvm.jar" />
    <stubModelEntry path="${module}/lib/kotlinx-serialization-json-jvm.jar" />
    <stubModelEntry path="${module}/lib/model-api-jvm.jar" />
    <stubModelEntry path="${module}/lib/model-server.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">23865718-e2ed-41b5-a132-0da1d04e266d(jetbrains.mps.ide.httpsupport.manager)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:817e4e70-961e-4a95-98a1-15e9f32231f1:jetbrains.mps.ide.httpsupport" version="0" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="1" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="5" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="17" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="23865718-e2ed-41b5-a132-0da1d04e266d(jetbrains.mps.ide.httpsupport.manager)" version="0" />
    <module reference="9e98f4e2-decf-4e97-bf80-9109e8b759aa(jetbrains.mps.lang.feedback.context)" version="0" />
    <module reference="306183fb-952a-4095-9ca0-a4b846e2036e(org.modelix.modelcheck.mps.plugin)" version="0" />
    <module reference="3257c0a0-131a-49aa-b7eb-4ec72ed06b33(org.modelix.mps.json.bulk.model.access.plugin)" version="0" />
  </dependencyVersions>
</solution>

