globalNetConnect VDD -type pgpin -pin VDD -instance *
globalNetConnect VSS -type pgpin -pin VSS -instance *
globalNetConnect VDD -type tiehi 
globalNetConnect VSS -type tielo 
globalNetConnect VDD -type tiehi -pin VDD -instance *
globalNetConnect VSS -type tielo -pin VSS -instance *

