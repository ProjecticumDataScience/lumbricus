# usage:  python dbscript.py  -i inputfile -o outputfile
# this script creates database file for genome Lumbricus Terrestris Lumbricus Rubellus


import getopt, sys
import xml.sax


   


    
class ProteinsHandler(xml.sax.ContentHandler):
    def __init__(self,argv):
        self.CurrentTag = ""
        self.reference = ""
        self.seq = ""
        self.MATCH_line = ""
        self.total_alignment_score = ""
        self.gDNA_exon_coordinates = ""
        self.cumulative_length_of_scored_exons = ""
        self.PGL_module =""
        
        self.instreamp = False      
        self.outfile = "sax" 
                                    
        self.outstreamp = False 
        self.infile = "06.fasta.out.xml"
        
        # Parse option list
        try:
            opts, args = getopt.getopt(argv, 'ht:i:o:',
                                            ['help',
                                             'type=',
                                             'infile=',
                                             'outfile=',
                                             'loscore=', 'hiscore=',
                                             'locov=', 'hicov='])

        except getopt.GetoptError:
            print(__doc__)
            sys.exit(2)        
        
        for o, a in opts:
            if o in ('-h', '--help'):
                print(__doc__)
                sys.exit(None)
            elif o in ('-t', '--type'):
                self.qtype = a
            elif o in ('-i', '--infile'):
                self.infile = a
            elif o in ('-o', '--outfile'):
                self.outfile = a
            elif o == '--loscore':
                self.loscore = float(a)
            elif o == '--hiscore':
                self.hiscore = float(a)
            elif o == '--locov':
                self.locov = float(a)
            elif o == '--hicov':
                self.hicov = float(a)        


        
        #self.infile = sys.stdin
         # Attempt to open input stream
        if self.infile is not sys.stdin:
            self.instream = open(self.infile,'r')
        else:
            self.instream = self.infile
        self.instreamp = True

        # Attempt to open output stream
        if self.outfile is not sys.stdout:
            self.outstream = open(self.outfile,'w')
        else:
            self.outstream = self.outfile
        self.outstreamp = True     
        
        self.outstream.write('***gene  database chromosome 1,2,3,4,5,6 Lumbricus Rubellus ***\n')
   # Called when an element starts
    def startElement(self, tag, attributes):
        self.CurrentTag = tag
        if (tag == "spliced_alignment"):
            print("**** New  Gene ****\n")
            self.outstream.write("**** New  Gene ****\n")
        
        elif (tag == "reference"):
            print("*************reference**************\n")
        # access attrs
            title = attributes["ref_description"]
            print ("refs:", title)
            
            self.outstream.write("refs:"+title+'\n')
        
        # exons:      <exon e_start="19846783" e_stop="19846632"/>
        # <gDNA_exon_boundary g_start="19845981" g_stop="19845867" g_length="115"/>
        
        elif(tag=="exon-intron_info"):
            print("exon coordinates:")
            self.outstream.write("exon coordinates: \n")
        elif(tag=="gDNA_exon_boundary"):         
       
            
            start=attributes["g_start"]
            end=attributes["g_stop"] 
            
            print(start, "-", end)
            self.outstream.write(start+ "-"+end +'\n')
         
        elif self.CurrentTag == "PGL_module":
           print("end chromosome")
           self.outstream.write("**** end chromosome ****\n")
           exit() 
        
            
            
    # Called when an elements ends
    def endElement(self, tag):
        if self.CurrentTag == "reference":
            print("reference : ", self.reference)
        
        elif self.CurrentTag == "seq":
            print("protein seq :", self.seq)
            self.outstream.write("protein seq :"+ self.seq +'\n')
        elif self.CurrentTag == "MATCH_line":
            print("MATCH_line :", self.MATCH_line.department)
        elif self.CurrentTag == "total_alignment_score":
            print("total_alignment_score:", self.total_alignment_score)
            self.outstream.write("total_alignment_score:"+ self.total_alignment_score+ '\n')
        elif self.CurrentTag == "gDNA_exon_coordinates":
            print("gDNA_exon_coordinates:", self.gDNA_exon_coordinates) 
        elif self.CurrentTag == "cumulative_length_of_scored_exons":
           print("cumulative_length_of_scored_exons:", self.cumulative_length_of_scored_exons)        
           self.outstream.write("cumulative_length_of_scored_exons:"+ self.cumulative_length_of_scored_exons+ '\n') 


    # Called when a character is read
    def characters(self, content):
        if self.CurrentTag == "reference":
            self.reference = content
        elif self.CurrentTag == "seq":
            self.seq = content
        elif self.CurrentTag == "MATCH_line":
            self.MATCH_line = content
        elif self.CurrentTag == "subject":
            self.subject = content
        elif self.CurrentTag == "total_alignment_score":
            self.total_alignment_score = content
        elif self.CurrentTag == "cumulative_length_of_scored_exons":
            self.cumulative_length_of_scored_exons = content
                    
            
            
    def __recordmatch(self):

            # Print the transcript line
            self.outstream.write("test")
       
    def __del__(self):
        '''Class *destructor* method'''
                                                                                                                             
        # close input stream
        if self.instreamp:
            self.instream.close()

        # close output stream
        if self.outstreamp:
            self.outstream.close()

if __name__ == '__main__':
    gthxml_handler = ProteinsHandler(sys.argv[1:])
                                                                                                                             
    from xml.sax import make_parser

    genericsax = make_parser()
    genericsax.setContentHandler(gthxml_handler)
    genericsax.parse(gthxml_handler.instream)
