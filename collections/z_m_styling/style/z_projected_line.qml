<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.99.0-Master" simplifyDrawingHints="1" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" simplifyAlgorithm="0" maximumScale="1e+08" simplifyLocal="1" minimumScale="0" simplifyDrawingTol="1">
  <renderer-v2 symbollevels="0" forceraster="0" type="singleSymbol" enableorderby="0">
    <symbols>
      <symbol name="0" alpha="1" clip_to_extent="1" type="line">
        <layer class="MarkerLine" locked="0" enabled="1" pass="0">
          <prop v="3" k="interval"/>
          <prop v="0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MM" k="interval_unit"/>
          <prop v="-0.2" k="offset"/>
          <prop v="0" k="offset_along_line"/>
          <prop v="0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MM" k="offset_along_line_unit"/>
          <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="vertex" k="placement"/>
          <prop v="0" k="rotate"/>
          <symbol name="@0@0" alpha="1" clip_to_extent="1" type="marker">
            <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
              <prop v="0" k="angle"/>
              <prop v="255,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="dash" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2.8" k="size"/>
              <prop v="1" k="size_dd_active"/>
              <prop v="z(point_n($geometry,@geometry_point_num))" k="size_dd_expression"/>
              <prop v="" k="size_dd_field"/>
              <prop v="1" k="size_dd_useexpr"/>
              <prop v="0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="0" k="vertical_anchor_point"/>
            </layer>
          </symbol>
        </layer>
        <layer class="MarkerLine" locked="0" enabled="1" pass="0">
          <prop v="3" k="interval"/>
          <prop v="0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MM" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="0" k="offset_along_line"/>
          <prop v="0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MM" k="offset_along_line_unit"/>
          <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="1" k="rotate"/>
          <symbol name="@0@1" alpha="1" clip_to_extent="1" type="marker">
            <layer class="GeometryGenerator" locked="0" enabled="1" pass="0">
              <prop v="Line" k="SymbolType"/>
              <prop v="make_line( &#xa;translate(point_n(  $geometry,  @geometry_point_num ), 0 , -z(point_n($geometry,@geometry_point_num)) )&#xa;, &#xa;translate( point_n(  $geometry,  @geometry_point_num +1  ), 0 , -z(point_n($geometry,@geometry_point_num+1)) ) ) " k="geometryModifier"/>
              <symbol name="@@0@1@0" alpha="1" clip_to_extent="1" type="line">
                <layer class="SimpleLine" locked="0" enabled="1" pass="0">
                  <prop v="round" k="capstyle"/>
                  <prop v="0.66;2" k="customdash"/>
                  <prop v="0,0,0,0,0,0" k="customdash_map_unit_scale"/>
                  <prop v="MM" k="customdash_unit"/>
                  <prop v="0" k="draw_inside_polygon"/>
                  <prop v="round" k="joinstyle"/>
                  <prop v="72,123,182,255" k="line_color"/>
                  <prop v="solid" k="line_style"/>
                  <prop v="0.66" k="line_width"/>
                  <prop v="MM" k="line_width_unit"/>
                  <prop v="0" k="offset"/>
                  <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="1" k="use_custom_dash"/>
                  <prop v="0,0,0,0,0,0" k="width_map_unit_scale"/>
                </layer>
              </symbol>
            </layer>
          </symbol>
        </layer>
        <layer class="SimpleLine" locked="0" enabled="1" pass="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,124,244,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1.06" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="0,0,0,0,0,0" k="width_map_unit_scale"/>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple"/>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property value="pal" key="labeling"/>
    <property value="false" key="labeling/addDirectionSymbol"/>
    <property value="0" key="labeling/angleOffset"/>
    <property value="0" key="labeling/blendMode"/>
    <property value="0" key="labeling/bufferBlendMode"/>
    <property value="255" key="labeling/bufferColorA"/>
    <property value="255" key="labeling/bufferColorB"/>
    <property value="255" key="labeling/bufferColorG"/>
    <property value="255" key="labeling/bufferColorR"/>
    <property value="false" key="labeling/bufferDraw"/>
    <property value="128" key="labeling/bufferJoinStyle"/>
    <property value="true" key="labeling/bufferNoFill"/>
    <property value="1" key="labeling/bufferOpacity"/>
    <property value="1" key="labeling/bufferSize"/>
    <property value="0,0,0,0,0,0" key="labeling/bufferSizeMapUnitScale"/>
    <property value="MM" key="labeling/bufferSizeUnits"/>
    <property value="false" key="labeling/centroidInside"/>
    <property value="false" key="labeling/centroidWhole"/>
    <property value="3" key="labeling/decimals"/>
    <property value="false" key="labeling/displayAll"/>
    <property value="0" key="labeling/dist"/>
    <property value="false" key="labeling/distInMapUnits"/>
    <property value="0,0,0,0,0,0" key="labeling/distMapUnitScale"/>
    <property value="false" key="labeling/drawLabels"/>
    <property value="false" key="labeling/enabled"/>
    <property value="" key="labeling/fieldName"/>
    <property value="false" key="labeling/fitInPolygonOnly"/>
    <property value="0" key="labeling/fontCapitals"/>
    <property value="Lato" key="labeling/fontFamily"/>
    <property value="false" key="labeling/fontItalic"/>
    <property value="0" key="labeling/fontLetterSpacing"/>
    <property value="false" key="labeling/fontLimitPixelSize"/>
    <property value="10000" key="labeling/fontMaxPixelSize"/>
    <property value="3" key="labeling/fontMinPixelSize"/>
    <property value="10" key="labeling/fontSize"/>
    <property value="0,0,0,0,0,0" key="labeling/fontSizeMapUnitScale"/>
    <property value="Point" key="labeling/fontSizeUnit"/>
    <property value="false" key="labeling/fontStrikeout"/>
    <property value="false" key="labeling/fontUnderline"/>
    <property value="57" key="labeling/fontWeight"/>
    <property value="0" key="labeling/fontWordSpacing"/>
    <property value="false" key="labeling/formatNumbers"/>
    <property value="true" key="labeling/isExpression"/>
    <property value="true" key="labeling/labelOffsetInMapUnits"/>
    <property value="0,0,0,0,0,0" key="labeling/labelOffsetMapUnitScale"/>
    <property value="false" key="labeling/labelPerPart"/>
    <property value="&lt;" key="labeling/leftDirectionSymbol"/>
    <property value="false" key="labeling/limitNumLabels"/>
    <property value="25" key="labeling/maxCurvedCharAngleIn"/>
    <property value="-25" key="labeling/maxCurvedCharAngleOut"/>
    <property value="2000" key="labeling/maxNumLabels"/>
    <property value="false" key="labeling/mergeLines"/>
    <property value="0" key="labeling/minFeatureSize"/>
    <property value="4294967295" key="labeling/multilineAlign"/>
    <property value="1" key="labeling/multilineHeight"/>
    <property value="Medium" key="labeling/namedStyle"/>
    <property value="true" key="labeling/obstacle"/>
    <property value="1" key="labeling/obstacleFactor"/>
    <property value="0" key="labeling/obstacleType"/>
    <property value="0" key="labeling/offsetType"/>
    <property value="0" key="labeling/placeDirectionSymbol"/>
    <property value="2" key="labeling/placement"/>
    <property value="10" key="labeling/placementFlags"/>
    <property value="false" key="labeling/plussign"/>
    <property value="TR,TL,BR,BL,R,L,TSR,BSR" key="labeling/predefinedPositionOrder"/>
    <property value="true" key="labeling/preserveRotation"/>
    <property value="#ffffff" key="labeling/previewBkgrdColor"/>
    <property value="5" key="labeling/priority"/>
    <property value="4" key="labeling/quadOffset"/>
    <property value="0" key="labeling/repeatDistance"/>
    <property value="0,0,0,0,0,0" key="labeling/repeatDistanceMapUnitScale"/>
    <property value="1" key="labeling/repeatDistanceUnit"/>
    <property value="false" key="labeling/reverseDirectionSymbol"/>
    <property value=">" key="labeling/rightDirectionSymbol"/>
    <property value="10000000" key="labeling/scaleMax"/>
    <property value="1" key="labeling/scaleMin"/>
    <property value="false" key="labeling/scaleVisibility"/>
    <property value="6" key="labeling/shadowBlendMode"/>
    <property value="0" key="labeling/shadowColorB"/>
    <property value="0" key="labeling/shadowColorG"/>
    <property value="0" key="labeling/shadowColorR"/>
    <property value="false" key="labeling/shadowDraw"/>
    <property value="135" key="labeling/shadowOffsetAngle"/>
    <property value="1" key="labeling/shadowOffsetDist"/>
    <property value="true" key="labeling/shadowOffsetGlobal"/>
    <property value="0,0,0,0,0,0" key="labeling/shadowOffsetMapUnitScale"/>
    <property value="MM" key="labeling/shadowOffsetUnit"/>
    <property value="0.69999999999999996" key="labeling/shadowOpacity"/>
    <property value="1.5" key="labeling/shadowRadius"/>
    <property value="false" key="labeling/shadowRadiusAlphaOnly"/>
    <property value="0,0,0,0,0,0" key="labeling/shadowRadiusMapUnitScale"/>
    <property value="MM" key="labeling/shadowRadiusUnit"/>
    <property value="100" key="labeling/shadowScale"/>
    <property value="0" key="labeling/shadowUnder"/>
    <property value="0" key="labeling/shapeBlendMode"/>
    <property value="255" key="labeling/shapeBorderColorA"/>
    <property value="128" key="labeling/shapeBorderColorB"/>
    <property value="128" key="labeling/shapeBorderColorG"/>
    <property value="128" key="labeling/shapeBorderColorR"/>
    <property value="0" key="labeling/shapeBorderWidth"/>
    <property value="0,0,0,0,0,0" key="labeling/shapeBorderWidthMapUnitScale"/>
    <property value="MM" key="labeling/shapeBorderWidthUnit"/>
    <property value="false" key="labeling/shapeDraw"/>
    <property value="255" key="labeling/shapeFillColorA"/>
    <property value="255" key="labeling/shapeFillColorB"/>
    <property value="255" key="labeling/shapeFillColorG"/>
    <property value="255" key="labeling/shapeFillColorR"/>
    <property value="64" key="labeling/shapeJoinStyle"/>
    <property value="0,0,0,0,0,0" key="labeling/shapeOffsetMapUnitScale"/>
    <property value="MM" key="labeling/shapeOffsetUnit"/>
    <property value="0" key="labeling/shapeOffsetX"/>
    <property value="0" key="labeling/shapeOffsetY"/>
    <property value="1" key="labeling/shapeOpacity"/>
    <property value="0,0,0,0,0,0" key="labeling/shapeRadiiMapUnitScale"/>
    <property value="MM" key="labeling/shapeRadiiUnit"/>
    <property value="0" key="labeling/shapeRadiiX"/>
    <property value="0" key="labeling/shapeRadiiY"/>
    <property value="0" key="labeling/shapeRotation"/>
    <property value="0" key="labeling/shapeRotationType"/>
    <property value="" key="labeling/shapeSVGFile"/>
    <property value="0,0,0,0,0,0" key="labeling/shapeSizeMapUnitScale"/>
    <property value="0" key="labeling/shapeSizeType"/>
    <property value="MM" key="labeling/shapeSizeUnit"/>
    <property value="0" key="labeling/shapeSizeX"/>
    <property value="0" key="labeling/shapeSizeY"/>
    <property value="0" key="labeling/shapeType"/>
    <property value="&lt;substitutions/>" key="labeling/substitutions"/>
    <property value="255" key="labeling/textColorA"/>
    <property value="0" key="labeling/textColorB"/>
    <property value="0" key="labeling/textColorG"/>
    <property value="0" key="labeling/textColorR"/>
    <property value="1" key="labeling/textOpacity"/>
    <property value="0" key="labeling/upsidedownLabels"/>
    <property value="false" key="labeling/useSubstitutions"/>
    <property value="" key="labeling/wrapChar"/>
    <property value="0" key="labeling/xOffset"/>
    <property value="0" key="labeling/yOffset"/>
    <property value="0" key="labeling/zIndex"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1" sizeLegend="0">
    <DiagramCategory width="15" height="15" scaleDependency="Area" transparency="0" minScaleDenominator="inf" diagramOrientation="Up" backgroundAlpha="255" backgroundColor="#ffffff" sizeScale="0,0,0,0,0,0" lineSizeScale="0,0,0,0,0,0" maxScaleDenominator="1e+08" minimumSize="0" penAlpha="255" enabled="0" penColor="#000000" sizeType="MM" labelPlacementMethod="XHeight" lineSizeType="MM" penWidth="0" angleOffset="1440" barWidth="5" scaleBasedVisibility="0">
      <fontProperties style="" description="Lato,10,-1,5,57,0,0,0,0,0"/>
    </DiagramCategory>
    <symbol name="sizeSymbol" alpha="1" clip_to_extent="1" type="marker">
      <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
        <prop v="0" k="angle"/>
        <prop v="255,0,0,255" k="color"/>
        <prop v="1" k="horizontal_anchor_point"/>
        <prop v="bevel" k="joinstyle"/>
        <prop v="circle" k="name"/>
        <prop v="0,0" k="offset"/>
        <prop v="0,0,0,0,0,0" k="offset_map_unit_scale"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="0,0,0,255" k="outline_color"/>
        <prop v="solid" k="outline_style"/>
        <prop v="0" k="outline_width"/>
        <prop v="0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
        <prop v="MM" k="outline_width_unit"/>
        <prop v="diameter" k="scale_method"/>
        <prop v="2" k="size"/>
        <prop v="0,0,0,0,0,0" k="size_map_unit_scale"/>
        <prop v="MM" k="size_unit"/>
        <prop v="1" k="vertical_anchor_point"/>
      </layer>
    </symbol>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" placement="2" yPosColumn="-1" xPosColumn="-1" zIndex="0" linePlacementFlags="10" showAll="1" obstacle="0" dist="0" showColumn="-1"/>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <annotationform></annotationform>
  <aliases>
    <alias name="" index="0" field="id"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column name="id" width="-1" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <editform></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <expressionfields/>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
