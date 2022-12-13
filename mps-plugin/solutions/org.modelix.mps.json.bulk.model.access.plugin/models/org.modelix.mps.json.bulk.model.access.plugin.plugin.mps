<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b61e466d-2b62-484c-a3b0-37acdf6898f0(org.modelix.mps.json.bulk.model.access.plugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="0" />
  </languages>
  <imports>
    <import index="9xw8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.handler.codec.http(MPS.IDEA/)" />
    <import index="lqgf" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.channel(MPS.IDEA/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="4h87" ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="q9cc" ref="3257c0a0-131a-49aa-b7eb-4ec72ed06b33/java:org.modelix.mps.rest.model.access.server(org.modelix.mps-rest-model-acess.mps-plugin/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
      <concept id="5573986434797765074" name="jetbrains.mps.ide.httpsupport.structure.HttpRequestParameter" flags="ng" index="pFkrN" />
      <concept id="5573986434797590400" name="jetbrains.mps.ide.httpsupport.structure.RequestHandler" flags="ng" index="pFx2x">
        <child id="5573986434797811183" name="handleFunction" index="pCJbe" />
        <child id="6040064942661848825" name="queryPrefix" index="std7D" />
        <child id="3520791039919950128" name="handledMethods" index="3e4HnV" unordered="true" />
        <child id="2332657309400291202" name="queryParameters" index="3_QDjO" />
      </concept>
      <concept id="6040064942661848791" name="jetbrains.mps.ide.httpsupport.structure.QueryPath" flags="ng" index="std77">
        <child id="6040064942661848818" name="segmetns" index="std7y" />
      </concept>
      <concept id="6040064942661848792" name="jetbrains.mps.ide.httpsupport.structure.QuerySegment" flags="ng" index="std78">
        <property id="6040064942662280271" name="segment" index="svBHv" />
      </concept>
      <concept id="3520791039919950202" name="jetbrains.mps.ide.httpsupport.structure.HttpMethod_Get" flags="ng" index="3e4HmL" />
      <concept id="2332657309400282169" name="jetbrains.mps.ide.httpsupport.structure.QueryParameter" flags="ng" index="3_QJtf">
        <child id="5111696079053634063" name="parameterConverter" index="1TjXUf" />
      </concept>
      <concept id="5111696079053507374" name="jetbrains.mps.ide.httpsupport.structure.DefaultParameterConverter" flags="ng" index="1TjqYI">
        <child id="5111696079053507400" name="parameterType" index="1TjqZ8" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="1s6lPHFX3IY" />
  <node concept="pFx2x" id="1s6lPHFX46t">
    <property role="TrG5h" value="modelsview" />
    <node concept="std77" id="1s6lPHFX46u" role="std7D">
      <node concept="std78" id="6D0yQlqjhAR" role="std7y">
        <property role="svBHv" value="rest" />
      </node>
      <node concept="std78" id="3oI_IjfyglN" role="std7y">
        <property role="svBHv" value="modelsview" />
      </node>
    </node>
    <node concept="pF8on" id="1s6lPHFX46v" role="pCJbe">
      <node concept="3clFbS" id="1s6lPHFX46w" role="2VODD2">
        <node concept="3clFbJ" id="6KKKEInkG$x" role="3cqZAp">
          <node concept="3clFbS" id="6KKKEInkG$z" role="3clFbx">
            <node concept="3cpWs8" id="388YWwvSQAZ" role="3cqZAp">
              <node concept="3cpWsn" id="388YWwvSQB2" role="3cpWs9">
                <property role="TrG5h" value="openedProjects" />
                <node concept="_YKpA" id="388YWwvSQAV" role="1tU5fm">
                  <node concept="3uibUv" id="388YWwvSQBz" role="_ZDj9">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="388YWwvSQ51" role="33vP2m">
                  <node concept="2YIFZM" id="388YWwvSQ2N" role="2Oq$k0">
                    <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="388YWwvSQ81" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2epQjSqXKCY" role="3cqZAp">
              <node concept="15s5l7" id="4tPuiMOCm7G" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: SRepository is not a subtype of ?no classifier?&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5875805516898273487,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5977092449933510825]&quot;;" />
                <property role="huDt6" value="Error: SRepository is not a subtype of ?no classifier?" />
              </node>
              <node concept="15s5l7" id="4tPuiMOClDh" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: Incompatible method signature&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/2234318170389157992]&quot;;" />
                <property role="huDt6" value="Error: Incompatible method signature" />
              </node>
              <node concept="2YIFZM" id="6KKKEInkPYR" role="3clFbG">
                <ref role="1Pybhc" to="q9cc:~ModelsViewAccessHandler" resolve="ModelsViewAccessHandler" />
                <ref role="37wK5l" to="q9cc:~ModelsViewAccessHandler.init(org.jetbrains.mps.openapi.module.SRepository)" resolve="init" />
                <node concept="2OqwBi" id="2epQjSqXN1q" role="37wK5m">
                  <node concept="2OqwBi" id="2epQjSqXLDd" role="2Oq$k0">
                    <node concept="37vLTw" id="2epQjSqXKS2" role="2Oq$k0">
                      <ref role="3cqZAo" node="388YWwvSQB2" resolve="openedProjects" />
                    </node>
                    <node concept="1uHKPH" id="2epQjSqXMK0" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="2epQjSqXNp8" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6KKKEInkOis" role="3clFbw">
            <node concept="2YIFZM" id="6KKKEInkOiu" role="3fr31v">
              <ref role="1Pybhc" to="q9cc:~ModelsViewAccessHandler" resolve="ModelsViewAccessHandler" />
              <ref role="37wK5l" to="q9cc:~ModelsViewAccessHandler.isInitialised()" resolve="isInitialised" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6KKKEInkQbx" role="3cqZAp" />
        <node concept="3cpWs8" id="2epQjSqXRFP" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXRFO" role="3cpWs9">
            <property role="TrG5h" value="requestField" />
            <node concept="3uibUv" id="2epQjSqXRFQ" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="2epQjSqXRFR" role="33vP2m">
              <node concept="3VsKOn" id="2epQjSqXRFT" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="2epQjSqXRFU" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="2epQjSqXRFV" role="37wK5m">
                  <property role="Xl_RC" value="request" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2epQjSqXRFW" role="3cqZAp">
          <node concept="2OqwBi" id="2epQjSqXRWd" role="3clFbG">
            <node concept="37vLTw" id="2epQjSqXRWc" role="2Oq$k0">
              <ref role="3cqZAo" node="2epQjSqXRFO" resolve="requestField" />
            </node>
            <node concept="liA8E" id="2epQjSqXRWe" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="2epQjSqXRWf" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2epQjSqXRG0" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXRFZ" role="3cpWs9">
            <property role="TrG5h" value="requestObj" />
            <node concept="3uibUv" id="2epQjSqXRG1" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
            </node>
            <node concept="10QFUN" id="2epQjSqXRG2" role="33vP2m">
              <node concept="2OqwBi" id="2epQjSqXRX9" role="10QFUP">
                <node concept="37vLTw" id="2epQjSqXRX8" role="2Oq$k0">
                  <ref role="3cqZAo" node="2epQjSqXRFO" resolve="requestField" />
                </node>
                <node concept="liA8E" id="2epQjSqXRXa" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="2epQjSqXSep" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="2epQjSqXRG5" role="10QFUM">
                <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2epQjSqXRmY" role="3cqZAp" />
        <node concept="3cpWs8" id="2epQjSqXPJ4" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXPJ3" role="3cpWs9">
            <property role="TrG5h" value="channelField" />
            <node concept="3uibUv" id="2epQjSqXQWF" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="2epQjSqXPJ6" role="33vP2m">
              <node concept="3VsKOn" id="2epQjSqXPJ8" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="2epQjSqXPJ9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="2epQjSqXPJa" role="37wK5m">
                  <property role="Xl_RC" value="channel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2epQjSqXPJb" role="3cqZAp">
          <node concept="2OqwBi" id="2epQjSqXQun" role="3clFbG">
            <node concept="37vLTw" id="2epQjSqXQum" role="2Oq$k0">
              <ref role="3cqZAo" node="2epQjSqXPJ3" resolve="channelField" />
            </node>
            <node concept="liA8E" id="2epQjSqXQuo" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="2epQjSqXQup" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2epQjSqXPJf" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXPJe" role="3cpWs9">
            <property role="TrG5h" value="channel" />
            <node concept="3uibUv" id="2epQjSqXRcu" role="1tU5fm">
              <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
            </node>
            <node concept="10QFUN" id="2epQjSqXPJh" role="33vP2m">
              <node concept="2OqwBi" id="2epQjSqXQv1" role="10QFUP">
                <node concept="37vLTw" id="2epQjSqXQv0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2epQjSqXPJ3" resolve="channelField" />
                </node>
                <node concept="liA8E" id="2epQjSqXQv2" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="2epQjSqXSg4" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="2epQjSqXPJk" role="10QFUM">
                <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2epQjSqXSZz" role="3cqZAp" />
        <node concept="3cpWs8" id="2epQjSqXT1Y" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXT1Z" role="3cpWs9">
            <property role="TrG5h" value="decoderField" />
            <node concept="3uibUv" id="2epQjSqXT20" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="2epQjSqXT21" role="33vP2m">
              <node concept="3VsKOn" id="2epQjSqXT22" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="2epQjSqXT23" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="2epQjSqXT24" role="37wK5m">
                  <property role="Xl_RC" value="decoder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2epQjSqXT25" role="3cqZAp">
          <node concept="2OqwBi" id="2epQjSqXT26" role="3clFbG">
            <node concept="37vLTw" id="2epQjSqXT27" role="2Oq$k0">
              <ref role="3cqZAo" node="2epQjSqXT1Z" resolve="decoderField" />
            </node>
            <node concept="liA8E" id="2epQjSqXT28" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="2epQjSqXT29" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2epQjSqXT2a" role="3cqZAp">
          <node concept="3cpWsn" id="2epQjSqXT2b" role="3cpWs9">
            <property role="TrG5h" value="decoder" />
            <node concept="3uibUv" id="2epQjSqXU8k" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
            </node>
            <node concept="10QFUN" id="2epQjSqXT2d" role="33vP2m">
              <node concept="2OqwBi" id="2epQjSqXT2e" role="10QFUP">
                <node concept="37vLTw" id="2epQjSqXT2f" role="2Oq$k0">
                  <ref role="3cqZAo" node="2epQjSqXT1Z" resolve="decoderField" />
                </node>
                <node concept="liA8E" id="2epQjSqXT2g" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="2epQjSqXT2h" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="2epQjSqXUcb" role="10QFUM">
                <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6KKKEInkWqU" role="3cqZAp" />
        <node concept="3clFbF" id="6KKKEInkFZT" role="3cqZAp">
          <node concept="2YIFZM" id="6KKKEInkGcG" role="3clFbG">
            <ref role="1Pybhc" to="q9cc:~ModelsViewAccessHandler" resolve="ModelsViewAccessHandler" />
            <ref role="37wK5l" to="q9cc:~ModelsViewAccessHandler.handle(io.netty.handler.codec.http.HttpRequest,io.netty.handler.codec.http.QueryStringDecoder,io.netty.channel.Channel)" resolve="handle" />
            <node concept="37vLTw" id="6KKKEInkGf8" role="37wK5m">
              <ref role="3cqZAo" node="2epQjSqXRFZ" resolve="requestObj" />
            </node>
            <node concept="37vLTw" id="6KKKEInkGhD" role="37wK5m">
              <ref role="3cqZAo" node="2epQjSqXT2b" resolve="decoder" />
            </node>
            <node concept="37vLTw" id="6KKKEInkGjS" role="37wK5m">
              <ref role="3cqZAo" node="2epQjSqXPJe" resolve="channel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3e4HmL" id="3oI_IjfyglQ" role="3e4HnV" />
  </node>
  <node concept="pFx2x" id="6D0yQlqjqt5">
    <property role="TrG5h" value="models" />
    <node concept="3_QJtf" id="6D0yQlqkgU8" role="3_QDjO">
      <property role="TrG5h" value="ID" />
      <node concept="1TjqYI" id="6D0yQlqkgVP" role="1TjXUf">
        <node concept="3uibUv" id="6D0yQlqkh0B" role="1TjqZ8">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
        </node>
      </node>
    </node>
    <node concept="std77" id="6D0yQlqjqt6" role="std7D">
      <node concept="std78" id="6D0yQlqjqzh" role="std7y">
        <property role="svBHv" value="rest" />
      </node>
      <node concept="std78" id="3oI_Ijfyg1F" role="std7y">
        <property role="svBHv" value="models" />
      </node>
    </node>
    <node concept="pF8on" id="6D0yQlqjqt7" role="pCJbe">
      <node concept="3clFbS" id="6D0yQlqjqt8" role="2VODD2">
        <node concept="3clFbJ" id="5GElTcIJtGy" role="3cqZAp">
          <node concept="3clFbS" id="5GElTcIJtGz" role="3clFbx">
            <node concept="3cpWs8" id="5GElTcIJtG$" role="3cqZAp">
              <node concept="3cpWsn" id="5GElTcIJtG_" role="3cpWs9">
                <property role="TrG5h" value="openedProjects" />
                <node concept="_YKpA" id="5GElTcIJtGA" role="1tU5fm">
                  <node concept="3uibUv" id="5GElTcIJtGB" role="_ZDj9">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5GElTcIJtGC" role="33vP2m">
                  <node concept="2YIFZM" id="5GElTcIJtGD" role="2Oq$k0">
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                  </node>
                  <node concept="liA8E" id="5GElTcIJtGE" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5GElTcIJtGF" role="3cqZAp">
              <node concept="15s5l7" id="5GElTcIJtGG" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: SRepository is not a subtype of ?no classifier?&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5875805516898273487,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5977092449933510825]&quot;;" />
                <property role="huDt6" value="Error: SRepository is not a subtype of ?no classifier?" />
              </node>
              <node concept="15s5l7" id="5GElTcIJtGH" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: Incompatible method signature&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/2234318170389157992]&quot;;" />
                <property role="huDt6" value="Error: Incompatible method signature" />
              </node>
              <node concept="2YIFZM" id="5GElTcIJtGI" role="3clFbG">
                <ref role="1Pybhc" to="q9cc:~ModelsAccessHandler" resolve="ModelsAccessHandler" />
                <ref role="37wK5l" to="q9cc:~ModelsAccessHandler.init(org.jetbrains.mps.openapi.module.SRepository)" resolve="init" />
                <node concept="2OqwBi" id="5GElTcIJtGJ" role="37wK5m">
                  <node concept="2OqwBi" id="5GElTcIJtGK" role="2Oq$k0">
                    <node concept="37vLTw" id="5GElTcIJtGL" role="2Oq$k0">
                      <ref role="3cqZAo" node="5GElTcIJtG_" resolve="openedProjects" />
                    </node>
                    <node concept="1uHKPH" id="5GElTcIJtGM" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="5GElTcIJtGN" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5GElTcIJtGO" role="3clFbw">
            <node concept="2YIFZM" id="5GElTcIJtGP" role="3fr31v">
              <ref role="1Pybhc" to="q9cc:~ModelsAccessHandler" resolve="ModelsAccessHandler" />
              <ref role="37wK5l" to="q9cc:~ModelsAccessHandler.isInitialised()" resolve="isInitialised" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GElTcIJtGQ" role="3cqZAp" />
        <node concept="3cpWs8" id="5GElTcIJtGR" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtGS" role="3cpWs9">
            <property role="TrG5h" value="requestField" />
            <node concept="3uibUv" id="5GElTcIJtGT" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="5GElTcIJtGU" role="33vP2m">
              <node concept="3VsKOn" id="5GElTcIJtGV" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="5GElTcIJtGW" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="5GElTcIJtGX" role="37wK5m">
                  <property role="Xl_RC" value="request" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5GElTcIJtGY" role="3cqZAp">
          <node concept="2OqwBi" id="5GElTcIJtGZ" role="3clFbG">
            <node concept="37vLTw" id="5GElTcIJtH0" role="2Oq$k0">
              <ref role="3cqZAo" node="5GElTcIJtGS" resolve="requestField" />
            </node>
            <node concept="liA8E" id="5GElTcIJtH1" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="5GElTcIJtH2" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5GElTcIJtH3" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtH4" role="3cpWs9">
            <property role="TrG5h" value="requestObj" />
            <node concept="3uibUv" id="5GElTcIJtH5" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
            </node>
            <node concept="10QFUN" id="5GElTcIJtH6" role="33vP2m">
              <node concept="2OqwBi" id="5GElTcIJtH7" role="10QFUP">
                <node concept="37vLTw" id="5GElTcIJtH8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GElTcIJtGS" resolve="requestField" />
                </node>
                <node concept="liA8E" id="5GElTcIJtH9" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="5GElTcIJtHa" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="5GElTcIJtHb" role="10QFUM">
                <ref role="3uigEE" to="9xw8:~HttpRequest" resolve="HttpRequest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GElTcIJtHc" role="3cqZAp" />
        <node concept="3cpWs8" id="5GElTcIJtHd" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtHe" role="3cpWs9">
            <property role="TrG5h" value="channelField" />
            <node concept="3uibUv" id="5GElTcIJtHf" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="5GElTcIJtHg" role="33vP2m">
              <node concept="3VsKOn" id="5GElTcIJtHh" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="5GElTcIJtHi" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="5GElTcIJtHj" role="37wK5m">
                  <property role="Xl_RC" value="channel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5GElTcIJtHk" role="3cqZAp">
          <node concept="2OqwBi" id="5GElTcIJtHl" role="3clFbG">
            <node concept="37vLTw" id="5GElTcIJtHm" role="2Oq$k0">
              <ref role="3cqZAo" node="5GElTcIJtHe" resolve="channelField" />
            </node>
            <node concept="liA8E" id="5GElTcIJtHn" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="5GElTcIJtHo" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5GElTcIJtHp" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtHq" role="3cpWs9">
            <property role="TrG5h" value="channel" />
            <node concept="3uibUv" id="5GElTcIJtHr" role="1tU5fm">
              <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
            </node>
            <node concept="10QFUN" id="5GElTcIJtHs" role="33vP2m">
              <node concept="2OqwBi" id="5GElTcIJtHt" role="10QFUP">
                <node concept="37vLTw" id="5GElTcIJtHu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GElTcIJtHe" resolve="channelField" />
                </node>
                <node concept="liA8E" id="5GElTcIJtHv" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="5GElTcIJtHw" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="5GElTcIJtHx" role="10QFUM">
                <ref role="3uigEE" to="lqgf:~Channel" resolve="Channel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GElTcIJtHy" role="3cqZAp" />
        <node concept="3cpWs8" id="5GElTcIJtHz" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtH$" role="3cpWs9">
            <property role="TrG5h" value="decoderField" />
            <node concept="3uibUv" id="5GElTcIJtH_" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Field" resolve="Field" />
            </node>
            <node concept="2OqwBi" id="5GElTcIJtHA" role="33vP2m">
              <node concept="3VsKOn" id="5GElTcIJtHB" role="2Oq$k0">
                <ref role="3VsUkX" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
              </node>
              <node concept="liA8E" id="5GElTcIJtHC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredField(java.lang.String)" resolve="getDeclaredField" />
                <node concept="Xl_RD" id="5GElTcIJtHD" role="37wK5m">
                  <property role="Xl_RC" value="decoder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5GElTcIJtHE" role="3cqZAp">
          <node concept="2OqwBi" id="5GElTcIJtHF" role="3clFbG">
            <node concept="37vLTw" id="5GElTcIJtHG" role="2Oq$k0">
              <ref role="3cqZAo" node="5GElTcIJtH$" resolve="decoderField" />
            </node>
            <node concept="liA8E" id="5GElTcIJtHH" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Field.setAccessible(boolean)" resolve="setAccessible" />
              <node concept="3clFbT" id="5GElTcIJtHI" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5GElTcIJtHJ" role="3cqZAp">
          <node concept="3cpWsn" id="5GElTcIJtHK" role="3cpWs9">
            <property role="TrG5h" value="decoder" />
            <node concept="3uibUv" id="5GElTcIJtHL" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
            </node>
            <node concept="10QFUN" id="5GElTcIJtHM" role="33vP2m">
              <node concept="2OqwBi" id="5GElTcIJtHN" role="10QFUP">
                <node concept="37vLTw" id="5GElTcIJtHO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GElTcIJtH$" resolve="decoderField" />
                </node>
                <node concept="liA8E" id="5GElTcIJtHP" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                  <node concept="pFkrN" id="5GElTcIJtHQ" role="37wK5m" />
                </node>
              </node>
              <node concept="3uibUv" id="5GElTcIJtHR" role="10QFUM">
                <ref role="3uigEE" to="9xw8:~QueryStringDecoder" resolve="QueryStringDecoder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GElTcIJtHS" role="3cqZAp" />
        <node concept="3clFbF" id="5GElTcIJtHT" role="3cqZAp">
          <node concept="2YIFZM" id="5GElTcIJtHU" role="3clFbG">
            <ref role="1Pybhc" to="q9cc:~ModelsAccessHandler" resolve="ModelsAccessHandler" />
            <ref role="37wK5l" to="q9cc:~ModelsAccessHandler.handle(io.netty.handler.codec.http.HttpRequest,io.netty.handler.codec.http.QueryStringDecoder,io.netty.channel.Channel)" resolve="handle" />
            <node concept="37vLTw" id="5GElTcIJtHV" role="37wK5m">
              <ref role="3cqZAo" node="5GElTcIJtH4" resolve="requestObj" />
            </node>
            <node concept="37vLTw" id="5GElTcIJtHW" role="37wK5m">
              <ref role="3cqZAo" node="5GElTcIJtHK" resolve="decoder" />
            </node>
            <node concept="37vLTw" id="5GElTcIJtHX" role="37wK5m">
              <ref role="3cqZAo" node="5GElTcIJtHq" resolve="channel" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

