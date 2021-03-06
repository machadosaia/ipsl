within iPSL.Electrical.Banks;
model PwShuntB
  parameter Real B "(pu) on system base";
  Complex I;
  Complex V;
  Real v;
  Complex S;
  iPSL.Connectors.PwPin p annotation (Placement(transformation(extent={{-14,66},{6,86}})));
equation
  v = sqrt(p.vr ^ 2 + p.vi ^ 2);
  I = Complex(p.ir, p.ii);
  V = Complex(p.vr, p.vi);
  I = Complex(0, B) * V;
  S = Complex(p.vr, p.vi) * Complex(p.ir, -p.ii) annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics), Icon(coordinateSystem(preserveAspectRatio=
            true, extent={{-100,-100},{100,100}}), graphics={Rectangle(extent={{-66,72},{66,-82}}, lineColor={0,0,255}),Text(
          extent={{-36,54},{42,-62}},
          lineColor={0,0,255},
          textStyle={TextStyle.Bold},
          textString="jB")}));
  annotation (Documentation(revisions="<html>
<!--DISCLAIMER-->
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>"));
end PwShuntB;
