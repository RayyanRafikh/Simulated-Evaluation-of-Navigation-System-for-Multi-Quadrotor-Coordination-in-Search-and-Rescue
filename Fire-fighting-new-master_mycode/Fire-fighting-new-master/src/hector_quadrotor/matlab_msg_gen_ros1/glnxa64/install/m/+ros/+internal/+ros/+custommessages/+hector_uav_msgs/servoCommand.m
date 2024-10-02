function [data, info] = servoCommand
%ServoCommand gives an empty data for hector_uav_msgs/ServoCommand
% Copyright 2019-2020 The MathWorks, Inc.
%#codegen
data = struct();
data.MessageType = 'hector_uav_msgs/ServoCommand';
[data.Header, info.Header] = ros.internal.ros.messages.std_msgs.header;
info.Header.MLdataType = 'struct';
[data.Value, info.Value] = ros.internal.ros.messages.ros.default_type('uint16',NaN);
info.MessageType = 'hector_uav_msgs/ServoCommand';
info.constant = 0;
info.default = 0;
info.maxstrlen = NaN;
info.MaxLen = 1;
info.MinLen = 1;
info.MatPath = cell(1,7);
info.MatPath{1} = 'header';
info.MatPath{2} = 'header.seq';
info.MatPath{3} = 'header.stamp';
info.MatPath{4} = 'header.stamp.sec';
info.MatPath{5} = 'header.stamp.nsec';
info.MatPath{6} = 'header.frame_id';
info.MatPath{7} = 'value';
