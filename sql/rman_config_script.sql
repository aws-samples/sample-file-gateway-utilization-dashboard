rman target /
CONFIGURE CHANNEL DEVICE TYPE DISK CLEAR;
CONFIGURE DEVICE TYPE DISK PARALLELISM 8;
CONFIGURE CHANNEL 1 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-001/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 2 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-002/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 3 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-003/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 4 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-004/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 5 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-001/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 6 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-002/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 7 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-003/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';
CONFIGURE CHANNEL 8 DEVICE TYPE DISK FORMAT '/mnt/s3-sgw-004/orabackup/%d/%T_%d_%s_%p_%t_%U.dat';