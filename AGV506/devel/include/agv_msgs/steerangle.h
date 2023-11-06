// Generated by gencpp from file agv_msgs/steerangle.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_STEERANGLE_H
#define AGV_MSGS_MESSAGE_STEERANGLE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace agv_msgs
{
template <class ContainerAllocator>
struct steerangle_
{
  typedef steerangle_<ContainerAllocator> Type;

  steerangle_()
    : angle(0)  {
    }
  steerangle_(const ContainerAllocator& _alloc)
    : angle(0)  {
  (void)_alloc;
    }



   typedef int32_t _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::agv_msgs::steerangle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::steerangle_<ContainerAllocator> const> ConstPtr;

}; // struct steerangle_

typedef ::agv_msgs::steerangle_<std::allocator<void> > steerangle;

typedef boost::shared_ptr< ::agv_msgs::steerangle > steeranglePtr;
typedef boost::shared_ptr< ::agv_msgs::steerangle const> steerangleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::steerangle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::steerangle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::steerangle_<ContainerAllocator1> & lhs, const ::agv_msgs::steerangle_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::steerangle_<ContainerAllocator1> & lhs, const ::agv_msgs::steerangle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::steerangle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::steerangle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::steerangle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::steerangle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::steerangle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::steerangle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::steerangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de62f7ef8463d5c42dacb6932cbd1470";
  }

  static const char* value(const ::agv_msgs::steerangle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde62f7ef8463d5c4ULL;
  static const uint64_t static_value2 = 0x2dacb6932cbd1470ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::steerangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/steerangle";
  }

  static const char* value(const ::agv_msgs::steerangle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::steerangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 angle # 角度\n"
;
  }

  static const char* value(const ::agv_msgs::steerangle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::steerangle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct steerangle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::steerangle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::steerangle_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_STEERANGLE_H
