// Generated by gencpp from file hector_uav_msgs/TakeoffResult.msg
// DO NOT EDIT!


#ifndef HECTOR_UAV_MSGS_MESSAGE_TAKEOFFRESULT_H
#define HECTOR_UAV_MSGS_MESSAGE_TAKEOFFRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hector_uav_msgs
{
template <class ContainerAllocator>
struct TakeoffResult_
{
  typedef TakeoffResult_<ContainerAllocator> Type;

  TakeoffResult_()
    {
    }
  TakeoffResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> const> ConstPtr;

}; // struct TakeoffResult_

typedef ::hector_uav_msgs::TakeoffResult_<std::allocator<void> > TakeoffResult;

typedef boost::shared_ptr< ::hector_uav_msgs::TakeoffResult > TakeoffResultPtr;
typedef boost::shared_ptr< ::hector_uav_msgs::TakeoffResult const> TakeoffResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hector_uav_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/usr/local/MATLAB/R2021b/sys/ros1/glnxa64/ros1/share/std_msgs/cmake/../msg', '/usr/local/MATLAB/R2021b/sys/ros1/glnxa64/ros1/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/usr/local/MATLAB/R2021b/sys/ros1/glnxa64/ros1/share/actionlib_msgs/cmake/../msg'], 'hector_uav_msgs': ['/home/aditya/Fire-fighting-drones/src/hector_quadrotor/matlab_msg_gen_ros1/glnxa64/src/hector_uav_msgs/msg', '/home/aditya/Fire-fighting-drones/src/hector_quadrotor/matlab_msg_gen_ros1/glnxa64/devel/share/hector_uav_msgs/msg'], 'geometry_msgs': ['/usr/local/MATLAB/R2021b/sys/ros1/glnxa64/ros1/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::hector_uav_msgs::TakeoffResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hector_uav_msgs/TakeoffResult";
  }

  static const char* value(const ::hector_uav_msgs::TakeoffResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
;
  }

  static const char* value(const ::hector_uav_msgs::TakeoffResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TakeoffResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hector_uav_msgs::TakeoffResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::hector_uav_msgs::TakeoffResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // HECTOR_UAV_MSGS_MESSAGE_TAKEOFFRESULT_H
