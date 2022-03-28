// Generated by gencpp from file dac_modules/discrete_action.msg
// DO NOT EDIT!


#ifndef DAC_MODULES_MESSAGE_DISCRETE_ACTION_H
#define DAC_MODULES_MESSAGE_DISCRETE_ACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dac_modules
{
template <class ContainerAllocator>
struct discrete_action_
{
  typedef discrete_action_<ContainerAllocator> Type;

  discrete_action_()
    : robot_id()
    , action()  {
    }
  discrete_action_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , action(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_id_type;
  _robot_id_type robot_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::dac_modules::discrete_action_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dac_modules::discrete_action_<ContainerAllocator> const> ConstPtr;

}; // struct discrete_action_

typedef ::dac_modules::discrete_action_<std::allocator<void> > discrete_action;

typedef boost::shared_ptr< ::dac_modules::discrete_action > discrete_actionPtr;
typedef boost::shared_ptr< ::dac_modules::discrete_action const> discrete_actionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dac_modules::discrete_action_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dac_modules::discrete_action_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dac_modules::discrete_action_<ContainerAllocator1> & lhs, const ::dac_modules::discrete_action_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id &&
    lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dac_modules::discrete_action_<ContainerAllocator1> & lhs, const ::dac_modules::discrete_action_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dac_modules

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dac_modules::discrete_action_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dac_modules::discrete_action_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dac_modules::discrete_action_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dac_modules::discrete_action_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dac_modules::discrete_action_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dac_modules::discrete_action_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dac_modules::discrete_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b521f11e88571246b003b95decc73bfa";
  }

  static const char* value(const ::dac_modules::discrete_action_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb521f11e88571246ULL;
  static const uint64_t static_value2 = 0xb003b95decc73bfaULL;
};

template<class ContainerAllocator>
struct DataType< ::dac_modules::discrete_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dac_modules/discrete_action";
  }

  static const char* value(const ::dac_modules::discrete_action_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dac_modules::discrete_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string robot_id # robot id\n"
"string action   # discrete action\n"
;
  }

  static const char* value(const ::dac_modules::discrete_action_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dac_modules::discrete_action_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct discrete_action_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dac_modules::discrete_action_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dac_modules::discrete_action_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_id);
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DAC_MODULES_MESSAGE_DISCRETE_ACTION_H
