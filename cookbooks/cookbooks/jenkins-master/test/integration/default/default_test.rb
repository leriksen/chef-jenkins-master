unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe package('jenkins-master-server') do
  it { should be_installed }
end
