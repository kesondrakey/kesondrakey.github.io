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
    <h3>{{ variable }}</h3>
    <div class="flex-container">
      {% for day in ["Yesterday", "Today"] %}
        <div>
          <h4>{{ day }}</h4>
          <div>
            <h5>Flux Tower 1_2</h5>
            <a href="/fluxtower1_2/daily_plots/fluxtower1_{{ variable }}_{{ day | downcase }}.png" target="_blank">
                <img src="/fluxtower1_2/daily_plots/fluxtower1_{{ variable }}_{{ day | downcase }}.png" alt="Fluxtower1 - {{ variable }} {{ day }}" onerror="imgError(this);">
            </a>
            <a href="/fluxtower1_2/daily_plots/fluxtower2_{{ variable }}_{{ day | downcase }}.png" target="_blank">
                <img src="/fluxtower1_2/daily_plots/fluxtower2_{{ variable }}_{{ day | downcase }}.png" alt="Fluxtower2 - {{ variable }} {{ day }}" onerror="imgError(this);">
            </a>
          </div>
          <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
          <div>
            <h5>Flux Tower 3_4</h5>
            <a href="/fluxtower3_4/daily_plots/fluxtower3_{{ variable }}_{{ day | downcase }}.png" target="_blank">
                <img src="/fluxtower3_4/daily_plots/fluxtower3_{{ variable }}_{{ day | downcase }}.png" alt="Fluxtower3 - {{ variable }} {{ day }}" onerror="imgError(this);">
            </a>
            <a href="/fluxtower3_4/daily_plots/fluxtower4_{{ variable }}_{{ day | downcase }}.png" target="_blank">
                <img src="/fluxtower3_4/daily_plots/fluxtower4_{{ variable }}_{{ day | downcase }}.png" alt="Fluxtower4 - {{ variable }} {{ day }}" onerror="imgError(this);">
            </a>
          </div>
        </div>
      {% endfor %}
    </div>
  {% endfor %}

  </div>
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
</style>
