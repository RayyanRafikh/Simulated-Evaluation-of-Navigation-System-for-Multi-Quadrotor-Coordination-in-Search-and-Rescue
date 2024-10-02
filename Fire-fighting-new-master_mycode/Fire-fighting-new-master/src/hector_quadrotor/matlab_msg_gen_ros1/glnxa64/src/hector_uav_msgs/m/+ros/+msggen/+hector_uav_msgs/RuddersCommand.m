
classdef RuddersCommand < ros.Message
    %RuddersCommand MATLAB implementation of hector_uav_msgs/RuddersCommand
    %   This class was automatically generated by
    %   ros.internal.pubsubEmitter.
    %   Copyright 2014-2020 The MathWorks, Inc.
    properties (Constant)
        MessageType = 'hector_uav_msgs/RuddersCommand' % The ROS message type
    end
    properties (Constant, Hidden)
        MD5Checksum = '2e136cb8cfffc2233e404b320c27bca6' % The MD5 Checksum of the message definition
        PropertyList = { 'Header' 'Aileron' 'Elevator' 'Rudder' } % List of non-constant message properties
        ROSPropertyList = { 'header' 'aileron' 'elevator' 'rudder' } % List of non-constant ROS message properties
        PropertyMessageTypes = { 'ros.msggen.std_msgs.Header' ...
            '' ...
            '' ...
            '' ...
            } % Types of contained nested messages
    end
    properties (Constant)
    end
    properties
        Header
        Aileron
        Elevator
        Rudder
    end
    methods
        function set.Header(obj, val)
            validAttributes = {'nonempty', 'scalar'};
            validClasses = {'ros.msggen.std_msgs.Header'};
            validateattributes(val, validClasses, validAttributes, 'RuddersCommand', 'Header')
            obj.Header = val;
        end
        function set.Aileron(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'RuddersCommand', 'Aileron');
            obj.Aileron = single(val);
        end
        function set.Elevator(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'RuddersCommand', 'Elevator');
            obj.Elevator = single(val);
        end
        function set.Rudder(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'RuddersCommand', 'Rudder');
            obj.Rudder = single(val);
        end
    end
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
        %loadobj Implements loading of message from MAT file
        % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.msggen.hector_uav_msgs.RuddersCommand.empty(0,1);
                return
            end
            % Create an empty message object
            obj = ros.msggen.hector_uav_msgs.RuddersCommand(strObj);
        end
    end
end
