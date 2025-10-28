README.html: livrables README.adoc
	asciidoctor -r asciidoctor-diagram README.adoc

livrables: pc3-deliverables.plantuml

pc3-deliverables.plantuml: pc3-gantt.plantuml
	grep 'D3\.' pc3-gantt.plantuml > pc3-deliverables.plantuml
