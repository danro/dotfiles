import os

# Add paths for node scripts
LOCAL = '/usr/local/bin:/usr/local/sbin:'

# Sublime's default path is
# /usr/bin:/bin:/usr/sbin:/sbin
os.environ['PATH'] += ':'
os.environ['PATH'] += LOCAL