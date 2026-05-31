(* Frame drum membrane starter. First-order concept model only. *)

ClearAll["Global`*"];

speedOfSoundInPerSec = 13552;
alpha01 = 2.4048;

membraneModeHz[radiusIn_, tensionPerLength_, areaDensity_] :=
  (alpha01/(2*Pi*radiusIn))*Sqrt[tensionPerLength/areaDensity];

family = {
  <|"id" -> "FD-14", "radiusIn" -> 7.0, "targetHz" -> 180|>,
  <|"id" -> "FD-16", "radiusIn" -> 8.0, "targetHz" -> 150|>,
  <|"id" -> "FD-18", "radiusIn" -> 9.0, "targetHz" -> 125|>
};

(* Replace tension and area density with measured head data after prototype. *)
