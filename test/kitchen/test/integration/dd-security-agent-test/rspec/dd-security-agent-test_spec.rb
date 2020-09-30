require 'spec_helper'

describe 'successfully run functional test' do
  it 'displays PASS and returns 0' do
    output = `sudo /tmp/security-agent/testsuite`
    retval = $?
    print output
    expect(retval).to eq(0)
    expect(output).not_to include("FAIL")
  end
end

describe 'successfully run functional test in 32 bits' do
  it 'displays PASS and returns 0' do
    output = `sudo /tmp/security-agent/testsuite32`
    retval = $?
    print output
    expect(retval).to eq(0)
    expect(output).not_to include("FAIL")
  end
end

describe 'successfully run functional test inside a container' do
  it 'displays PASS and returns 0' do
    output = `sudo docker exec -ti docker-testsuite /tmp/security-agent/testsuite`
    retval = $?
    print output
    expect(retval).to eq(0)
    expect(output).not_to include("FAIL")
  end
end