
classdef Altimeter < ros.Message
    %Altimeter MATLAB implementation of hector_uav_msgs/Altimeter
    %   This class was automatically generated by
    %   ros.internal.pubsubEmitter.
    %   Copyright 2014-2020 The MathWorks, Inc.
    properties (Constant)
        MessageType = 'hector_uav_msgs/Altimeter' % The ROS message type
    end
    properties (Constant, Hidden)
        MD5Checksum = 'c785451e2f67a76b902818138e9b53c6' % The MD5 Checksum of the message definition
        PropertyList = { 'Header' 'Altitude' 'Pressure' 'Qnh' } % List of non-constant message properties
        ROSPropertyList = { 'header' 'altitude' 'pressure' 'qnh' } % List of non-constant ROS message properties
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
        Altitude
        Pressure
        Qnh
    end
    methods
        function set.Header(obj, val)
            validAttributes = {'nonempty', 'scalar'};
            validClasses = {'ros.msggen.std_msgs.Header'};
            validateattributes(val, validClasses, validAttributes, 'Altimeter', 'Header')
            obj.Header = val;
        end
        function set.Altitude(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'Altimeter', 'Altitude');
            obj.Altitude = single(val);
        end
        function set.Pressure(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'Altimeter', 'Pressure');
            obj.Pressure = single(val);
        end
        function set.Qnh(obj, val)
            validClasses = {'numeric'};
            validAttributes = {'nonempty', 'scalar'};
            validateattributes(val, validClasses, validAttributes, 'Altimeter', 'Qnh');
            obj.Qnh = single(val);
        end
    end
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
        %loadobj Implements loading of message from MAT file
        % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.msggen.hector_uav_msgs.Altimeter.empty(0,1);
                return
            end
            % Create an empty message object
            obj = ros.msggen.hector_uav_msgs.Altimeter(strObj);
        end
    end
end
