// Generated by gencpp from file robots_msg/color_detected.msg
// DO NOT EDIT!


#ifndef ROBOTS_MSG_MESSAGE_COLOR_DETECTED_H
#define ROBOTS_MSG_MESSAGE_COLOR_DETECTED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robots_msg
{
template <class ContainerAllocator>
struct color_detected_
{
  typedef color_detected_<ContainerAllocator> Type;

  color_detected_()
    : robot_id()
    , color()  {
    }
  color_detected_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , color(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_id_type;
  _robot_id_type robot_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _color_type;
  _color_type color;





  typedef boost::shared_ptr< ::robots_msg::color_detected_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robots_msg::color_detected_<ContainerAllocator> const> ConstPtr;

}; // struct color_detected_

typedef ::robots_msg::color_detected_<std::allocator<void> > color_detected;

typedef boost::shared_ptr< ::robots_msg::color_detected > color_detectedPtr;
typedef boost::shared_ptr< ::robots_msg::color_detected const> color_detectedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robots_msg::color_detected_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robots_msg::color_detected_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robots_msg::color_detected_<ContainerAllocator1> & lhs, const ::robots_msg::color_detected_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id &&
    lhs.color == rhs.color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robots_msg::color_detected_<ContainerAllocator1> & lhs, const ::robots_msg::color_detected_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robots_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robots_msg::color_detected_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robots_msg::color_detected_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::color_detected_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::color_detected_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::color_detected_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::color_detected_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robots_msg::color_detected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a781930af9459f434d13917270bb087";
  }

  static const char* value(const ::robots_msg::color_detected_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a781930af9459f4ULL;
  static const uint64_t static_value2 = 0x34d13917270bb087ULL;
};

template<class ContainerAllocator>
struct DataType< ::robots_msg::color_detected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robots_msg/color_detected";
  }

  static const char* value(const ::robots_msg::color_detected_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robots_msg::color_detected_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ColorDetected\n"
"\n"
"# Provide information about the dominant color of the current visual input\n"
"\n"
"# Robot id\n"
"string robot_id\n"
"\n"
"# Detected color\n"
"string color\n"
;
  }

  static const char* value(const ::robots_msg::color_detected_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robots_msg::color_detected_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct color_detected_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robots_msg::color_detected_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robots_msg::color_detected_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_id);
    s << indent << "color: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTS_MSG_MESSAGE_COLOR_DETECTED_H
