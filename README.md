# Daybreak
Minimum Viable Product for CSC454 + CSC491 2017

Daybreak is a platform to read, edit, generate reports from DICOM images
## Installation
1. bundle install
2. rake db:migrate
3. ruby populate_dicom.rb
4. rails s


## Credits
Daybreak med
## Data
Based on the DICOM parser we are using the following is the data we can extract from DICOM files:

 1 0002,0000         File Meta Information Group Length           UL     4 230 
 
 2 0002,0001         File Meta Information Version                OB     2 
 
 3 0002,0002         Media Storage SOP Class UID                  UI    26 1.2.840.10008.5.1.4.1.1.2 
 
 4 0002,0003         Media Storage SOP Instance UID               UI    64  1.2.826.0.1.3680043.8.1055.1.20111102150758997.22494556.03019111
 
 5 0002,0010         Transfer Syntax UID                          UI    22 1.2.840.10008.1.2.4.91
 
 6 0002,0012         Implementation Class UID                     UI    28 1.2.826.0.1.3680043.8.1055.1
 
 7 0002,0013         Implementation Version Name                  SH    16 dicomlibrary-100
 
 8 0002,0016         Source Application Entity Title              AE    12 DICOMLIBRARY
 
 9 0008,0005         Specific Character Set                       CS    10 ISO_IR 100
 
 10 0008,0008         Image Type                                   CS    28 ORIGINAL\PRIMARY\AXIAL\HELIX
 
 11 0008,0012         Instance Creation Date                       DA     8 20061012
 
 12 0008,0013         Instance Creation Time                       TM    14 091607.000000
 
 13 0008,0016         SOP Class UID                                UI    26 1.2.840.10008.5.1.4.1.1.2
 
 14 0008,0018         SOP Instance UID                             UI    64 1.2.826.0.1.3680043.8.1055.1.20111102150758997.22494556.03019111
 
 15 0008,0020         Study Date                                   DA     8 20061012
 
 16 0008,0022         Acquisition Date                             DA     8 20061012
 
 17 0008,0023         Content Date                                 DA     8 20061012
 
 18 0008,0030         Study Time                                   TM    14 090258.000000
 
 19 0008,0032         Acquisition Time                             TM    14 085229.000000
 
 20 0008,0033         Content Time                                 TM    14 085229.813000
 
 21 0008,0060         Modality                                     CS     2 CT
 
 22 0008,1030         Study Description                            LO    12 CT1 abdomen
 
 23 0008,1032         Procedure Code Sequence                      SQ    58 
 
 24 |_FFFE,E000       Item (#0)                                          50 
 
 25   |_0008,0100     Code Value                                   SH     8 CTABDOM
 
 26   |_0008,0102     Coding Scheme Designator                     SH     6 XPLORE
 
 27   |_0008,0104     Code Meaning                                 LO    12 CT1 abdomen
 
 28 0008,103E         Series Description                           LO    10 ARTERIELLE
 
 29 0008,1111         Referenced Performed Procedure Step Sequence SQ    88 
 
 30 |_FFFE,E000       Item (#0)                                          80 
 
 31   |_0008,1150     Referenced SOP Class UID                     UI    24 1.2.840.10008.3.1.2.3.3
 
 32   |_0008,1155     Referenced SOP Instance UID                  UI    40 1.2.840.113704.1.111.5104.1160636572.51
 
 33 0010,0010         Patient's Name                               PN    10 Anonymized
 
 34 0010,0020         Patient ID                                   LO     2 0
 
 35 0010,1010         Patient's Age                                AS     4 000Y
 
 36 0018,0010         Contrast/Bolus Agent                         LO     8 CONTRAST
 
 37 0018,0022         Scan Options                                 CS     6 HELIX
 
 38 0018,0050         Slice Thickness                              DS     4 1.0
 
 39 0018,0060         KVP                                          DS     4 120
 
 40 0018,0088         Spacing Between Slices                       DS     4 0.5
 
 41 0018,0090         Data Collection Diameter                     DS     4 302
 
 42 0018,1030         Protocol Name                                LO    26 ART.RENALES 12/Abdomen/Hx
 
 43 0018,1100         Reconstruction Diameter                      DS     4 302
 
 44 0018,1120         Gantry/Detector Tilt                         DS     2 0
 
 45 0018,1130         Table Height                                 DS     4 151
 
 46 0018,1140         Rotation Direction                           CS     2 CW
 
 47 0018,1151         X-Ray Tube Current                           IS     4 400
 
 48 0018,1152         Exposure                                     IS     4 300
 
 49 0018,1160         Filter Type                                  SH     2 B
 
 50 0018,1210         Convolution Kernel                           SH     2 B
 
 51 0018,5100         Patient Position                             CS     4 FFS
 
 52 0020,000D         Study Instance UID                           UI    64 1.2.826.0.1.3680043.8.1055.1.20111102150758591.92402465.76095170
 
 53 0020,000E         Series Instance UID                          UI    64 1.2.826.0.1.3680043.8.1055.1.20111102150758591.96842950.07877442
 
 54 0020,0011         Series Number                                IS     4 6168
 
 55 0020,0013         Instance Number                              IS     2 4
 
 56 0020,0032         Image Position (Patient)                     DS    30 -151.493508\-36.6564417\1293.5
 
 57 0020,0037         Image Orientation (Patient)                  DS    12 1\0\0\0\1\0
 
 58 0020,0052         Frame of Reference UID                       UI    38 1.2.840.113704.1.111.3704.1160637109.3
 
 59 0020,1041         Slice Location                               DS     8 -323.50
 
 60 0020,4000         Image Comments                               LT    58 JPEG 2000 lossless - Version 4.0.2 (c) Image Devices GmbH
 
 61 0028,0002         Samples per Pixel                            US     2 1
 
 62 0028,0004         Photometric Interpretation                   CS    12 MONOCHROME2
 
 63 0028,0010         Rows                                         US     2 512
 
 64 0028,0011         Columns                                      US     2 512
 
 65 0028,0030         Pixel Spacing                                DS    22 0.58984375\0.58984375
 
 66 0028,0100         Bits Allocated                               US     2 16
 
 67 0028,0101         Bits Stored                                  US     2 12
 
 68 0028,0102         High Bit                                     US     2 11
 
 69 0028,0103         Pixel Representation                         US     2 0
 
 70 0028,1050         Window Center                                DS    12 00050\00050
 
 71 0028,1051         Window Width                                 DS    12 00350\00350
 
 72 0028,1052         Rescale Intercept                            DS     6 -1000
 
 73 0028,1053         Rescale Slope                                DS     2 1
 
 74 0028,2110         Lossy Image Compression                      CS     2 01
 
 75 0028,2112         Lossy Image Compression Ratio                DS     8 5.887304
 
 76 0040,0007         Scheduled Procedure Step Description         LO    12 CT1 abdomen
 
 77 0040,0008         Scheduled Protocol Code Sequence             SQ    58 
 
 78 |_FFFE,E000       Item (#0)                                          50 
 
 79   |_0008,0100     Code Value                                   SH     8 CTABDOM
 
 80   |_0008,0102     Coding Scheme Designator                     SH     6 XPLORE
 
 81   |_0008,0104     Code Meaning                                 LO    12 CT1 abdomen
 
 82 0040,0009         Scheduled Procedure Step ID                  SH    12 A10026177758
 
 83 0040,0254         Performed Procedure Step Description         LO    12 CT1 abdomen
 
 84 0040,0260         Performed Protocol Code Sequence             SQ    58 
 
 85 |_FFFE,E000       Item (#0)                                          50 
 
 86   |_0008,0100     Code Value                                   SH     8 CTABDOM
 
 87   |_0008,0102     Coding Scheme Designator                     SH     6 XPLORE
 
 88   |_0008,0104     Code Meaning                                 LO    12 CT1 abdomen
 
 89 0040,0275         Request Attributes Sequence                  SQ   138 
 
 90 |_FFFE,E000       Item (#0)                                         130 
 
 91   |_0040,0007     Scheduled Procedure Step Description         LO    12 CT1 abdomen
 
 92   |_0040,0008     Scheduled Protocol Code Sequence             SQ    58 
 
 93   | |_FFFE,E000   Item (#0)                                          50 
 
 94   |   |_0008,0100 Code Value                                   SH     8 CTABDOM
 
 95   |   |_0008,0102 Coding Scheme Designator                     SH     6 XPLORE
 
 96   |   |_0008,0104 Code Meaning                                 LO    12 CT1 abdomen
 
 97   |_0040,0009     Scheduled Procedure Step ID                  SH    12 A10026177758
 
 98   |_0040,1001     Requested Procedure ID                       SH    12 A10026177757
 
 99 0040,1001         Requested Procedure ID                       SH    12 A10026177757

100 7FE0,0010         Encapsulated Pixel Data                      OW    -1 

101 |_FFFE,E000       Item (#0)                                    OW     4 

102   |_FFFE,E000     Pixel Data Item (#0)                         OW 89054 
