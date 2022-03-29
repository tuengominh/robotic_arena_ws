// Generated by gencpp from file robots_msg/platform.msg
// DO NOT EDIT!


#ifndef ROBOTS_MSG_MESSAGE_PLATFORM_H
#define ROBOTS_MSG_MESSAGE_PLATFORM_H


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
struct platform_
{
  typedef platform_<ContainerAllocator> Type;

  platform_()
    : action()
    , up(false)
    , down(false)  {
    }
  platform_(const ContainerAllocator& _alloc)
    : action(_alloc)
    , up(false)
    , down(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;

   typedef uint8_t _up_type;
  _up_type up;

   typedef uint8_t _down_type;
  _down_type down;





  typedef boost::shared_ptr< ::robots_msg::platform_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robots_msg::platform_<ContainerAllocator> const> ConstPtr;

}; // struct platform_

typedef ::robots_msg::platform_<std::allocator<void> > platform;

typedef boost::shared_ptr< ::robots_msg::platform > platformPtr;
typedef boost::shared_ptr< ::robots_msg::platform const> platformConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robots_msg::platform_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robots_msg::platform_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robots_msg::platform_<ContainerAllocator1> & lhs, const ::robots_msg::platform_<ContainerAllocator2> & rhs)
{
  return lhs.action == rhs.action &&
    lhs.up == rhs.up &&
    lhs.down == rhs.down;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robots_msg::platform_<ContainerAllocator1> & lhs, const ::robots_msg::platform_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robots_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robots_msg::platform_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robots_msg::platform_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::platform_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::platform_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::platform_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::platform_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robots_msg::platform_<ContainerAllocator> >
{
  static const char* value()
  {
    return "44b302fafd3aca89b85306b91c254349";
  }

  static const char* value(const ::robots_msg::platform_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x44b302fafd3aca89ULL;
  static const uint64_t static_value2 = 0xb85306b91c254349ULL;
};

template<class ContainerAllocator>
struct DataType< ::robots_msg::platform_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robots_msg/platform";
  }

  static const char* value(const ::robots_msg::platform_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robots_msg::platform_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string action # the actions are 'MOVING_UP', 'MOVING_DOWN', 'STOP'\n"
"bool up #  True when is up\n"
"bool down # True when is down \n"
"\n"
;
  }

  static const char* value(const ::robots_msg::platform_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robots_msg::platform_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
      stream.next(m.up);
      stream.next(m.down);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct platform_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robots_msg::platform_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robots_msg::platform_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
    s << indent << "up: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.up);
    s << indent << "down: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.down);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTS_MSG_MESSAGE_PLATFORM_H
