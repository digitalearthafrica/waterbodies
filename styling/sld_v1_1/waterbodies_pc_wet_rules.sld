<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se" version="1.1.0" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink">
  <NamedLayer>
    <se:Name>waterbodies</se:Name>
    <UserStyle>
      <se:Name>waterbodies</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>0 &lt;= wet percentage &lt;= 10</se:Name>
          <se:Description>
            <se:Title>0 &lt;= wet percentage &lt;= 10</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>0</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>10</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#fde725</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>10 &lt; wet percentage &lt;= 20</se:Name>
          <se:Description>
            <se:Title>10 &lt; wet percentage &lt;= 20</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>10</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>20</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b5de2b</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>20 &lt; wet percentage &lt;= 30</se:Name>
          <se:Description>
            <se:Title>20 &lt; wet percentage &lt;= 30</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>20</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>30</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#6ece58</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>30 &lt; wet percentage &lt;= 40</se:Name>
          <se:Description>
            <se:Title>30 &lt; wet percentage &lt;= 40</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>30</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#35b779</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>40 &lt; wet percentage &lt;= 50</se:Name>
          <se:Description>
            <se:Title>40 &lt; wet percentage &lt;= 50</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>50</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#1f9e89</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>50 &lt; wet percentage &lt;= 60</se:Name>
          <se:Description>
            <se:Title>50 &lt; wet percentage &lt;= 60</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>50</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>60</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#26828e</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>60 &lt; wet percentage &lt;= 70 </se:Name>
          <se:Description>
            <se:Title>60 &lt; wet percentage &lt;= 70 </se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>60</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>70</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#31688e</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>70 &lt; wet percentage &lt;= 80</se:Name>
          <se:Description>
            <se:Title>70 &lt; wet percentage &lt;= 80</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>70</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>80</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#3e4989</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>80 &lt; wet percentage &lt;= 90</se:Name>
          <se:Description>
            <se:Title>80 &lt; wet percentage &lt;= 90</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>80</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>90</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#482878</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>90 &lt; wet percentage &lt;= 100</se:Name>
          <se:Description>
            <se:Title>90 &lt; wet percentage &lt;= 100</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>90</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
                <ogc:Literal>100</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#440154</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>No valid observation</se:Name>
          <se:Description>
            <se:Title>No valid observation</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsNull>
              <ogc:PropertyName>last_valid_obs</ogc:PropertyName>
            </ogc:PropertyIsNull>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>slash</se:WellKnownName>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#23d9f1</se:SvgParameter>
                      <se:SvgParameter name="stroke-opacity">1</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#23d9f1</se:SvgParameter>
              <se:SvgParameter name="stroke-opacity">1</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
            </se:Stroke>
        </se:PolygonSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
