cp sobacl_test.txt sobacl_test.txt.old
cp sobacl_test.error sobacl_test.error.old
rm -f sobacl_test.txt sobacl_test.error sobacl_test.txt.diff sobacl_test.error.diff
################################################################################
#####                          All Defaults                                #####
################################################################################
echo "../bin/SOBAcl data/dmel-all-r5.30_0001000.gff > sobacl_test.txt 2> sobacl_test.error" > sobacl_test.txt
echo "../bin/SOBAcl data/dmel-all-r5.30_0001000.gff > sobacl_test.txt 2> sobacl_test.error" > sobacl_test.error
../bin/SOBAcl data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                Text Tables with Various Columns                      #####
################################################################################

echo "../bin/SOBAcl --columns seqid  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns seqid  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns source --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns source --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns source --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns type   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns type   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns type   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns type   --rows type --data type   --data_type count --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns type   --rows type --data type   --data_type count --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns type   --rows type --data type   --data_type count --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns strand --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns strand --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns strand --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns phase  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --columns phase  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --columns phase  --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --title 'Custom Title' data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --title 'Custom Title' data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --title 'Custom Title' data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --series seqid  --x type --y_data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid  --x type --y_data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --series seqid  --x type --y_data length --data_type mean  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 

################################################################################
#####                           HTML Tables                                #####
################################################################################
echo "../bin/SOBAcl --columns file  --rows type    --data_type count --layout table --format html      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns file  --rows type    --data_type count --layout table --format html      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns file  --rows type    --data_type count --layout table --format html      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns file  --rows strand  --data_type count --layout table --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns file  --rows strand  --data_type count --layout table --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns file  --rows strand  --data_type count --layout table --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                           Tab Tables                                 #####
################################################################################
echo "../bin/SOBAcl --columns file  --rows seqid   --data_type count --layout table --format tab data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns file  --rows seqid   --data_type count --layout table --format tab data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns file  --rows seqid   --data_type count --layout table --format tab data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                  Tables with Custom Templates                        #####
################################################################################
echo "../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format tab --template soba_custom_template_text.tt data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format tab --template soba_custom_template_text.tt data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format tab --template soba_custom_template_text.tt data/dmel-all-r5.30_0001000.gff data/dmel-all-r5.30_0010000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                 Tables with Various Data Types                       #####
################################################################################
echo "../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data start  --data_type min    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data start  --data_type min    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data start  --data_type min    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data end    --data_type max    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data end    --data_type max    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data end    --data_type max    --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mean   --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mean   --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean   --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data score  --data_type median --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data score  --data_type median --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data score  --data_type median --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data type   --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data phase  --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data phase  --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data phase  --data_type count  --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mean           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mean           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type mean           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type harmonic_mean  	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type harmonic_mean  	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type harmonic_mean  	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type geometric_mean 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type geometric_mean 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type geometric_mean 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type median         	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type median         	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type median         	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mode           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type mode           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type mode           	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type min                --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type min                --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type min                --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type sum 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type sum 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type sum 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type min 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type min 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type min 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type max 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type max 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type max 	     	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type variance       	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type variance       	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type variance       	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type standard_deviation --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type standard_deviation --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type standard_deviation --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type range     	 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type --data length --data_type range     	 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type --data length --data_type range     	 	--layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type               --data_type footprint 	        --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type               --data_type footprint 	        --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type               --data_type footprint 	        --layout table --format text data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                 GD Graphs with Various Layouts                       #####
################################################################################
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout lines       --gd x_labels_vertical=1 --output seqid_type_lines  --format png --out sobacl_test_images/sobacl_test_image_01 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout lines       --gd x_labels_vertical=1 --output seqid_type_lines  --format png --out sobacl_test_images/sobacl_test_image_01 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout lines       --gd x_labels_vertical=1 --output seqid_type_lines  --format png --out sobacl_test_images/sobacl_test_image_01 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout bars        --gd x_labels_vertical=1 --output seqid_type_bars   --format png --out sobacl_test_images/sobacl_test_image_02 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout bars        --gd x_labels_vertical=1 --output seqid_type_bars   --format png --out sobacl_test_images/sobacl_test_image_02 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout bars        --gd x_labels_vertical=1 --output seqid_type_bars   --format png --out sobacl_test_images/sobacl_test_image_02 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout hbars       --gd width=600           --output seqid_type_hbars  --format png --out sobacl_test_images/sobacl_test_image_03 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout hbars       --gd width=600           --output seqid_type_hbars  --format png --out sobacl_test_images/sobacl_test_image_03 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout hbars       --gd width=600           --output seqid_type_hbars  --format png --out sobacl_test_images/sobacl_test_image_03 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout points      --gd x_labels_vertical=1 --output seqid_type_points --format png --out sobacl_test_images/sobacl_test_image_04 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout points      --gd x_labels_vertical=1 --output seqid_type_points --format png --out sobacl_test_images/sobacl_test_image_04 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout points      --gd x_labels_vertical=1 --output seqid_type_points --format png --out sobacl_test_images/sobacl_test_image_04 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout linespoints --gd x_labels_vertical=1 --output seqid_type_lp     --format png --out sobacl_test_images/sobacl_test_image_05 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout linespoints --gd x_labels_vertical=1 --output seqid_type_lp     --format png --out sobacl_test_images/sobacl_test_image_05 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid  --x_data type --data length --data_type mean --layout linespoints --gd x_labels_vertical=1 --output seqid_type_lp     --format png --out sobacl_test_images/sobacl_test_image_05 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout area        --gd x_labels_vertical=1 --output seqid_type_area   --format png --out sobacl_test_images/sobacl_test_image_06 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout area        --gd x_labels_vertical=1 --output seqid_type_area   --format png --out sobacl_test_images/sobacl_test_image_06 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --columns seqid --rows type   --data length --data_type mean --layout area        --gd x_labels_vertical=1 --output seqid_type_area   --format png --out sobacl_test_images/sobacl_test_image_06 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error
echo "../bin/SOBAcl --series seqid  --x_data type --data type   --data_type count --layout pie        --gd x_labels_vertical=1 --output seqid_type_pie    --format png --out sobacl_test_images/sobacl_test_image_07 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid  --x_data type --data type   --data_type count --layout pie        --gd x_labels_vertical=1 --output seqid_type_pie    --format png --out sobacl_test_images/sobacl_test_image_07 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid  --x_data type --data type   --data_type count --layout pie        --gd x_labels_vertical=1 --output seqid_type_pie    --format png --out sobacl_test_images/sobacl_test_image_07 data/dmel-all-r5.30_0001000.gff 2>> sobacl_test.error

################################################################################
#####                 GD Graphs with Various Formats                       #####
################################################################################
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format jpeg --out sobacl_test_images/sobacl_test_image_08 data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format jpeg --out sobacl_test_images/sobacl_test_image_08 data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format jpeg --out sobacl_test_images/sobacl_test_image_08 data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format png --out sobacl_test_images/sobacl_test_image_09  data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format png --out sobacl_test_images/sobacl_test_image_09  data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format png --out sobacl_test_images/sobacl_test_image_09  data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format gif --out sobacl_test_images/sobacl_test_image_10  data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format gif --out sobacl_test_images/sobacl_test_image_10 data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --series seqid --x_data type --data length --data_type mean --layout bars --gd x_labels_vertical=1 --format gif --out sobacl_test_images/sobacl_test_image_10 data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                     Graphviz Ontology Graphs                         #####
################################################################################
echo "../bin/SOBAcl --layout graphviz --so_file data/so.obo --format png --out sobacl_test_images/sobacl_test_image_11 data/refseq_short.gff3 >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --layout graphviz --so_file data/so.obo --format png --out sobacl_test_images/sobacl_test_image_11 data/refseq_short.gff3 >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --layout graphviz --output test_gv_ --so_file data/so.obo --format png --out sobacl_test_images/sobacl_test_image_11 data/refseq_short.gff3 >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                         Various Reports                              #####
################################################################################
echo "../bin/SOBAcl --report attributes --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --report attributes --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --report attributes --format html_page data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --report attributes --format text      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --report attributes --format text      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --report attributes --format text      data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error

################################################################################
#####                     Limit Output with Select                         #####
################################################################################
echo "../bin/SOBAcl --select 'type  => "mRNA"'           			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => "mRNA"'           			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --select 'type  => "mRNA"'           			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --select 'type  => [\"ne\", \"contig\"]' 			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error   " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [\"ne\", \"contig\"]' 			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error   " >> sobacl_test.error
../bin/SOBAcl --select 'type  => ["ne", "contig"]' 			     data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error   
echo "../bin/SOBAcl --select 'start => [\">=\" => \"1000\"], end => [\"<=\", \"1000000\"]' data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --select 'start => [\">=\" => \"1000\"], end => [\"<=\", \"1000000\"]' data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --select 'start => [">>=" => "1000"], end => ["<=", "1000000"]' data/refseq_short.gff3>> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl --select 'type  => [\"=~\" => \"match\"]'         		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [\"=~\" => \"match\"]'         		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => ["=~" => "match"]'         		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(ne match)]'            		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(ne match)]'            		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(ne match)]'            		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(match match_part)]'    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(match match_part)]'    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(match match_part)]'    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(ne match match_part)]' 		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(ne match match_part)]' 		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(ne match match_part)]' 		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(=~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(=~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(=~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(=~ ^match)]' 	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(=~ ^match)]' 	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(=~ ^match)]' 	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 
echo "../bin/SOBAcl --select 'type  => [qw(!~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.txt
echo "../bin/SOBAcl --select 'type  => [qw(!~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error " >> sobacl_test.error
../bin/SOBAcl --select 'type  => [qw(!~ match)]'  	    		     data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error 

################################################################################
#####                     Create and Use SQLite DB                         #####
################################################################################
echo "../bin/SOBAcl --create data/dmel-all-r5.30_0001000.sqlite data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl --create data/dmel-all-r5.30_0001000.sqlite data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl --create data/dmel-all-r5.30_0001000.sqlite data/dmel-all-r5.30_0001000.gff >> sobacl_test.txt 2>> sobacl_test.error
echo "../bin/SOBAcl data/dmel-all-r5.30_0001000.sqlite >> sobacl_test.txt  2>> sobacl_test.error" >> sobacl_test.txt
echo "../bin/SOBAcl data/dmel-all-r5.30_0001000.sqlite >> sobacl_test.txt  2>> sobacl_test.error" >> sobacl_test.error
../bin/SOBAcl data/dmel-all-r5.30_0001000.sqlite >> sobacl_test.txt 2>> sobacl_test.txt

ls -l sobacl_test.txt sobacl_test.error sobacl_test_images/ | perl -lane 'print join "\t", @F[4,8]' >> sobacl_test.error

diff sobacl_test.txt.old sobacl_test.txt > sobacl_test.txt.diff
diff sobacl_test.txt.old sobacl_test.txt > sobacl_test.error.diff
