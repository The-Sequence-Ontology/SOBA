################################################################################
#####                          All Defaults                                #####
################################################################################
../bin/SOBAcl data/dmel-all-r5.30_0001000.gff

################################################################################
#####                Text Tables with Various Columns                      #####
################################################################################

../bin/SOBAcl --columns seqid  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns source --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns type   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns type   --rows type --data type   --data_type count --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns strand --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns phase  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff 
../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff

################################################################################
#####                           HTML Tables                                #####
################################################################################
../bin/SOBAcl --columns file  --rows type    --data_type count --layout table --format html      data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns file  --rows strand  --data_type count --layout table --format html_page data/dmel-all-r5.30_0001000.gff

################################################################################
#####                           Tab Tables                                 #####
################################################################################
../bin/SOBAcl --columns file  --rows seqid   --data_type count --layout table --format tab data/dmel-all-r5.30_0001000.gff

################################################################################
#####                  Tables with Custom Templates                        #####
################################################################################
../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format tab --template soba_custom_template_text.tt data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff

################################################################################
#####                 Tables with Various Data Types                       #####
################################################################################
../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data start  --data_type min    --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data end    --data_type max    --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean   --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data score  --data_type median --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data phase  --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean           	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type harmonic_mean  	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type geometric_mean 	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type median         	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type mode           	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type min                --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type sum 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type min 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type max 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type variance       	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type standard_deviation --layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type --data length --data_type range     	 	--layout table --format text data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type               --data_type footprint 	        --layout table --format text data/dmel-all-r5.30_0001000.gff

################################################################################
#####                 GD Graphs with Various Layouts                       #####
################################################################################
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout lines       --gd x_labels_vertical=1 --output seqid_type_lines  --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout bars        --gd x_labels_vertical=1 --output seqid_type_bars   --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout hbars       --gd width=600           --output seqid_type_hbars  --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout points      --gd x_labels_vertical=1 --output seqid_type_points --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout linespoints --gd x_labels_vertical=1 --output seqid_type_lp     --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout area        --gd x_labels_vertical=1 --output seqid_type_area   --format png data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --series seqid  --x_data type --data type --data_type count --layout pie         --gd x_labels_vertical=1 --output seqid_type_pie    --format png data/dmel-all-r5.30_0001000.gff

################################################################################
#####                 GD Graphs with Various Formats                       #####
################################################################################
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format jpeg data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format png  data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format gif  data/dmel-all-r5.30_0001000.gff

################################################################################
#####                     Graphviz Ontology Graphs                         #####
################################################################################
../bin/SOBAcl --layout graphviz --output test_gv_ --so_file data/so.obo --format png data/refseq_short.gff3

################################################################################
#####                         Various Reports                              #####
################################################################################
../bin/SOBAcl --report attributes --format html_page data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl --report attributes --format text      data/dmel-all-r5.30_0001000.gff

################################################################################
#####                     Limit Output with Select                         #####
################################################################################
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean --layout table --format text --select 'type => "mRNA"' data/refseq_short.gff3
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean --layout table --format text --select 'type => ["ne", "contig"]' data/refseq_short.gff3
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean --layout table --format text --select 'start => [">=", "1000"], end => ["<=", "1000000"]' data/refseq_short.gff3

################################################################################
#####                     Create and Use SQLite DB                         #####
################################################################################
../bin/SOBAcl --create data/dmel-all-r5.30_0001000.sqlite data/dmel-all-r5.30_0001000.gff
../bin/SOBAcl data/dmel-all-r5.30_0001000.sqlite
