#
# Cookbook Name:: aptly
# Resource:: mirror
#
# Copyright 2014, Heavy Water Operations, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create, :update, :drop
default_action :create if defined?(default_action)

# Needed for Chef versions < 0.10.10
def initialize(*args)
  super
  @action = :create
end

attribute :name, :kind_of => String, :name_attribute => true
attribute :component, :kind_of => String, :default => nil
attribute :distribution, :kind_of => String, :default => nil
attribute :uri, :kind_of => String, :default => nil
attribute :keyid, :kind_of => String, :default => nil
attribute :keyserver, :kind_of => String, :default => nil
attribute :keyfile, :kind_of => String, :default => nil
attribute :filter, :kind_of => String, :default => nil
attribute :force_components, :kind_of => [TrueClass, FalseClass], :default => false
