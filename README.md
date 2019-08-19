# scp_action

Simple wrapper for SCP.

Example of use:

```
name: workflow_name
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: 'Custom name'
      uses: lbejiuk/scp_action@master
      with:
        public_key: ${{secrets.TEST_API_KEY}}
        ssh_port: 10000
        ssh_username: 'root'
        ssh_host: 'zrvs.de'
        source: 'key'
        target: '/root/'
```

The script will create a "./key" file, which can be used in the following steps, if "keep_key" variable was set.
The action takes on the following parameters:
- public_key __*required__
- ssh_port __default: '22'__
- ssh_username __*required__
- ssh_host __*required__
- source __*required__
- target __*required__
- keep_key __default: [not_set]__
