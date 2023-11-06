// Generated by gencpp from file agv_msgs/ultrasonicRadar.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_ULTRASONICRADAR_H
#define AGV_MSGS_MESSAGE_ULTRASONICRADAR_H


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
struct ultrasonicRadar_
{
  typedef ultrasonicRadar_<ContainerAllocator> Type;

  ultrasonicRadar_()
    : radar1(0.0)
    , radar2(0.0)  {
    }
  ultrasonicRadar_(const ContainerAllocator& _alloc)
    : radar1(0.0)
    , radar2(0.0)  {
  (void)_alloc;
    }



   typedef float _radar1_type;
  _radar1_type radar1;

   typedef float _radar2_type;
  _radar2_type radar2;





  typedef boost::shared_ptr< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> const> ConstPtr;

}; // struct ultrasonicRadar_

typedef ::agv_msgs::ultrasonicRadar_<std::allocator<void> > ultrasonicRadar;

typedef boost::shared_ptr< ::agv_msgs::ultrasonicRadar > ultrasonicRadarPtr;
typedef boost::shared_ptr< ::agv_msgs::ultrasonicRadar const> ultrasonicRadarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::ultrasonicRadar_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::ultrasonicRadar_<ContainerAllocator1> & lhs, const ::agv_msgs::ultrasonicRadar_<ContainerAllocator2> & rhs)
{
  return lhs.radar1 == rhs.radar1 &&
    lhs.radar2 == rhs.radar2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::ultrasonicRadar_<ContainerAllocator1> & lhs, const ::agv_msgs::ultrasonicRadar_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7b410d2498d0c5dc3043e12d93b45707";
  }

  static const char* value(const ::agv_msgs::ultrasonicRadar_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7b410d2498d0c5dcULL;
  static const uint64_t static_value2 = 0x3043e12d93b45707ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/ultrasonicRadar";
  }

  static const char* value(const ::agv_msgs::ultrasonicRadar_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 radar1 # 雷达1距离\n"
"float32 radar2 # 雷达2距离\n"
;
  }

  static const char* value(const ::agv_msgs::ultrasonicRadar_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radar1);
      stream.next(m.radar2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ultrasonicRadar_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::ultrasonicRadar_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::ultrasonicRadar_<ContainerAllocator>& v)
  {
    s << indent << "radar1: ";
    Printer<float>::stream(s, indent + "  ", v.radar1);
    s << indent << "radar2: ";
    Printer<float>::stream(s, indent + "  ", v.radar2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_ULTRASONICRADAR_H
