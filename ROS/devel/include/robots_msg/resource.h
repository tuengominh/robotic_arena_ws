// Generated by gencpp from file robots_msg/resource.msg
// DO NOT EDIT!


#ifndef ROBOTS_MSG_MESSAGE_RESOURCE_H
#define ROBOTS_MSG_MESSAGE_RESOURCE_H


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
struct resource_
{
  typedef resource_<ContainerAllocator> Type;

  resource_()
    : id()
    , type()
    , impact(0.0)  {
    }
  resource_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , type(_alloc)
    , impact(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef float _impact_type;
  _impact_type impact;





  typedef boost::shared_ptr< ::robots_msg::resource_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robots_msg::resource_<ContainerAllocator> const> ConstPtr;

}; // struct resource_

typedef ::robots_msg::resource_<std::allocator<void> > resource;

typedef boost::shared_ptr< ::robots_msg::resource > resourcePtr;
typedef boost::shared_ptr< ::robots_msg::resource const> resourceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robots_msg::resource_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robots_msg::resource_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robots_msg::resource_<ContainerAllocator1> & lhs, const ::robots_msg::resource_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.type == rhs.type &&
    lhs.impact == rhs.impact;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robots_msg::resource_<ContainerAllocator1> & lhs, const ::robots_msg::resource_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robots_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robots_msg::resource_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robots_msg::resource_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::resource_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::resource_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::resource_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::resource_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robots_msg::resource_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5cf0b9aa0750781892e023b6ab9304df";
  }

  static const char* value(const ::robots_msg::resource_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5cf0b9aa07507818ULL;
  static const uint64_t static_value2 = 0x92e023b6ab9304dfULL;
};

template<class ContainerAllocator>
struct DataType< ::robots_msg::resource_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robots_msg/resource";
  }

  static const char* value(const ::robots_msg::resource_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robots_msg::resource_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id  \n"
"string type\n"
"float32 impact\n"
;
  }

  static const char* value(const ::robots_msg::resource_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robots_msg::resource_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.impact);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct resource_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robots_msg::resource_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robots_msg::resource_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "impact: ";
    Printer<float>::stream(s, indent + "  ", v.impact);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTS_MSG_MESSAGE_RESOURCE_H
