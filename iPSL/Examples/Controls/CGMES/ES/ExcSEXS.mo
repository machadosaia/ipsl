within iPSL.Examples.Controls.CGMES.ES;


model ExcSEXS "SMIB model example of GENROU with Excitation System ExcSEXS"
  extends iPSL.Examples.SMIBpartial;
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Constant const2(k=0) annotation (Placement(transformation(extent={{-110,166},{-94,182}})));
  iPSL.Electrical.Machines.PSSE.GENROU gENROE(
    M_b=100,
    Tpd0=5,
    Tppd0=0.07,
    Tpq0=0.9,
    Tppq0=0.09,
    D=0,
    Xd=1.84,
    Xq=1.75,
    Xpd=0.41,
    Xpq=0.6,
    Xppd=0.2,
    Xl=0.12,
    S10=0.11,
    S12=0.39,
    V_0=1,
    P_0=40,
    angle_0=4.046276,
    Q_0=5.416582,
    Xppq=0.2,
    R_a=0,
    Xpp=0.2,
    H=4.28) annotation (Placement(transformation(extent={{-110,-20},{-70,20}})));
  Electrical.Controls.CGMES.ES.ExcSEXS sEXS(
    T_AT_B=0.1,
    T_B=1,
    K=100,
    T_E=0.1,
    E_MIN=-10,
    E_MAX=10,
    K_C=0.08,
    EFD_MAX=5,
    EFD_MIN=-5,
    T_C=1) annotation (Placement(transformation(extent={{-70,-54},{-108,-26}})));
  Modelica.Blocks.Sources.Constant const(k=0) annotation (Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=0,
        origin={-50,-40})));
equation
  connect(gENROE.PMECH, gENROE.PMECH0) annotation (Line(points={{-109.6,10},{-114,10},{-114,26},{-60,26},{-60,-6},{-68.4,-6}}, color={0,0,127}));
  connect(gENROE.EFD0, sEXS.EFD0) annotation (Line(points={{-68.4,-14},{-60,-14},{-60,-48.5556},{-70,-48.5556}}, color={0,0,127}));
  connect(gENROE.ETERM, sEXS.ECOMP) annotation (Line(points={{-68.4,10},{-64,10},{-64,-38.4444},{-70,-38.4444}}, color={0,0,127}));
  connect(sEXS.VOEL, const.y) annotation (Line(points={{-82.35,-54},{-68,-54},{-68,-40},{-54.4,-40}}, color={0,0,127}));
  connect(sEXS.VOTHSG, const.y) annotation (Line(points={{-70,-31.4444},{-64,-31.4444},{-64,-40},{-54.4,-40}}, color={0,0,127}));
  connect(sEXS.VUEL, const.y) annotation (Line(points={{-76.65,-54},{-64,-54},{-64,-40},{-54.4,-40}}, color={0,0,127}));
  connect(sEXS.EFD, gENROE.EFD) annotation (Line(points={{-108.95,-38.4444},{-114,-38.4444},{-114,-10},{-109.6,-10}}, color={0,0,127}));
  connect(gENROE.p, GEN1.p) annotation (Line(points={{-68,0},{-40,0},{-40,0}}, color={0,0,255}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-140,-100},{140,100}})),
    Documentation(revisions="<html>
<!--DISCLAIMER-->

<p>iPSL:</p>
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
</html>"),
    Icon(coordinateSystem(extent={{-100,-100},{100,100}})));
end ExcSEXS;
