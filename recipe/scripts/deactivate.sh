if [[ $(uname -s) == CYGWIN* ]] || [[ $(uname -s) =~ M* ]];
then
    # Windows
    export JAVA_HOME=$JAVA_HOME_CONDA_BACKUP
    unset JAVA_HOME_CONDA_BACKUP
    if [ -z $JAVA_HOME ]; then
        unset JAVA_HOME
    fi

else 
    # Linux / OSX
    export JAVA_HOME=$JAVA_HOME_CONDA_BACKUP
    unset JAVA_HOME_CONDA_BACKUP
    if [ -z $JAVA_HOME ]; then
        unset JAVA_HOME
    fi

    export JAVA_LD_LIBRARY_PATH=$JAVA_LD_LIBRARY_PATH_BACKUP
    unset JAVA_LD_LIBRARY_PATH_BACKUP
    if [ -z $JAVA_LD_LIBRARY_PATH ]; then
        unset JAVA_LD_LIBRARY_PATH
    fi
fi
