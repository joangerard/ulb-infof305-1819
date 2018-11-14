SLIDES_DIR= docs

all: $(SLIDES_DIR)/TP1_EDO.html $(SLIDES_DIR)/TP2_Portrait_de_phase_I.html $(SLIDES_DIR)/TP3_Portrait_de_phase_II.html $(SLIDES_DIR)/TP4_Portrait_de_phase_III.html $(SLIDES_DIR)/TP5_Simulation_Ordre_1.html $(SLIDES_DIR)/TP6_Simulation_Ordre_2.html

$(SLIDES_DIR)/%.html: %.ipynb
	jupyter nbconvert $< --to slides --stdout > $@

clean:
	rm -rf $(SLIDES_DIR)/*.html

