####################
##
## Condor command file to run launch VEGAS analysis
##
####################

universe        = vanilla
Rank            = (10*Mips + 10*KFlops + 20*Memory)
should_transfer_files = YES
when_to_transfer_output = ON_EXIT
getenv          = true
Arguments       = $(RunNumber) $(Server) $(Version) $(User)
executable	= /a/home/tehanu/$(User)/Analysis/scripts/goCal.sh
#initialdir      = /a/data/$(Server)/$(User)/Flasher/$(Version)

#####
# Arguments are 
# RunNumber - flasher run number to analyze
