alias v2v_test_prepare='rake db:drop RAILS_ENV=test && rake db:create RAILS_ENV=test && rake db:migrate RAILS_ENV=test'
alias v2v_device_ios='cordova run ios --device && idevicesyslog -u fda352b5c0bd26e3ee471d0b2a113ef1c85c4f4d'
alias v2v_device_android='cordova run android --device && adb lolcat | grep mlog'
alias v2v_run_tests='rake test:models && rake test:controllers'

alias deploy_ember='git checkout -f && gpr && npm i && ember deploy preview && ember deploy staging && ember deploy alpha && ember deploy migration'
alias deploy_elixir='git checkout -f; gpr; mix deps.get; deploy staging; mix edeliver stop -- staging; deploy preview; mix edeliver stop -- preview; deploy alpha; mix edeliver stop -- alpha'

deploy () {
    environment=$1

    branch=$(git branch | grep \* | cut -d ' ' -f2)
    [ -n "${2}" ] && branch=$2

    rm -rf .deliver/releases
    mix edeliver build release to $environment --branch=$branch
    mix edeliver deploy release to $environment

    mix edeliver stop -- $environment
    mix edeliver start -- $environment
}

run_on () {
    ip=$1
    command=$2

    ssh ubuntu@$ip "source ~/.profile && $command"
}
