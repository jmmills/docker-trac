setup_trac() {
    if [ -d /trac ]
    then
        trac-admin /trac initenv "My New Project" sqlite:db/trac.db git /repo.git
        setup_commonent
        setup_accountmanager
    fi
}

setup_repo() {
    if [ ! -d /repo.git ]
    then 
        mkdir /repo.git
        popd /repo.git
        git init --bare
    fi
}

clean_house() {
    if [ -d /.setup_trac.sh ] && [ -d /.setup_trac_config.sh ]
    then
        rm -v /.setup_trac.sh
        rm -v /.setup_trac_config.sh
    fi
}

setup_repo
setup_trac
clean_house
