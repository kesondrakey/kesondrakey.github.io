---
layout: post
title: Tower Comparisons
---

<h1>Tower Comparisons</h1>

{% for category_pair in 
  [
    ["Carbon Flux", ["CO2_li_wpl_H_li"]],
    ["Temperature", ["T_tmpr_rh_mean", "Ts_Avg"]],
    ["Net Radiation", ["albedo_Avg", "Rn_Avg", "par_Avg", "Rl_incoming_Avg", "Rl_outgoing_Avg", "Rs_incoming_Avg", "Rs_outgoing_Avg"]],
    ["Relative Humidity", ["RH_tmpr_rh_mean"]],
    ["Latent Heat Flux", ["LE_li_irga", "LE_li_wpl"]],
    ["Sensible Heat Flux", ["Hs"]],
    ["Precipitation", ["precip_Tot"]],
    ["Wind", ["u_star", "wnd_spd", "Uz_Avg", "Uz_stdev"]],
    ["Soil", ["soil_water_Avg.1", "soil_water_Avg.2", "soil_water_Avg.3", "Tsoil1_Avg", "Tsoil2_Avg", "Tsoil3_Avg", "Tsoil4_Avg"]],
    ["Battery Data", ["batt_volt_Avg", "cdm_batt_volt_Avg"]]
  ] 
%}

<button class="collapsible">{{ category_pair[0] }}</button>
<div class="content">

{% for variable in category_pair[1] %}
  <!-- Images for Each Tower for Today and Yesterday -->
  {% for day in ["Yesterday", "Today"] %}
    {% for i in (1..4) %}
        {% assign tower_directory = "fluxtower" %}
        {% if i <= 2 %}
          {% assign tower_directory = tower_directory | append: "1_2" %}
        {% else %}
          {% assign tower_directory = tower_directory | append: "3_4" %}
        {% endif %}
        <a href="/{{ tower_directory }}/daily_plots/{{ tower_directory }}_{{ variable }}_{{ day | downcase }}.png" target="_blank">
            <img src="/{{ tower_directory }}/daily_plots/{{ tower_directory }}_{{ variable }}_{{ day | downcase }}.png" alt="Fluxtower{{i}} - {{ variable }} {{ day }}">
        </a>
    {% endfor %}
  {% endfor %}
{% endfor %}


<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}

function imgError(image) {
    image.onerror = "";
    image.src = "/path/to/your/default/image.png";
    return true;
}
</script>

<style>
.collapsible {
  cursor: pointer;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.content {
  display: none;
  overflow: hidden;
}

.flex-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
</style>
