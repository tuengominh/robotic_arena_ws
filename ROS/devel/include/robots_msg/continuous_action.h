// Generated by gencpp from file robots_msg/continuous_action.msg
// DO NOT EDIT!


#ifndef ROBOTS_MSG_MESSAGE_CONTINUOUS_ACTION_H
#define ROBOTS_MSG_MESSAGE_CONTINUOUS_ACTION_H


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
struct continuous_action_
{
  typedef continuous_action_<ContainerAllocator> Type;

  continuous_action_()
    : robot_id()
    , left_motor(0.0)
    , right_motor(0.0)  {
    }
  continuous_action_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , left_motor(0.0)
    , right_motor(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_id_type;
  _robot_id_type robot_id;

   typedef float _left_motor_type;
  _left_motor_type left_motor;

   typedef float _right_motor_type;
  _right_motor_type right_motor;





  typedef boost::shared_ptr< ::robots_msg::continuous_action_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robots_msg::continuous_action_<ContainerAllocator> const> ConstPtr;

}; // struct continuous_action_

typedef ::robots_msg::continuous_action_<std::allocator<void> > continuous_action;

typedef boost::shared_ptr< ::robots_msg::continuous_action > continuous_actionPtr;
typedef boost::shared_ptr< ::robots_msg::continuous_action const> continuous_actionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robots_msg::continuous_action_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robots_msg::continuous_action_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robots_msg::continuous_action_<ContainerAllocator1> & lhs, const ::robots_msg::continuous_action_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id &&
    lhs.left_motor == rhs.left_motor &&
    lhs.right_motor == rhs.right_motor;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robots_msg::continuous_action_<ContainerAllocator1> & lhs, const ::robots_msg::continuous_action_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robots_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robots_msg::continuous_action_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robots_msg::continuous_action_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::continuous_action_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robots_msg::continuous_action_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::continuous_action_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robots_msg::continuous_action_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robots_msg::continuous_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fc9c8444f1e9ed5a0212e0b05e258d4";
  }

  static const char* value(const ::robots_msg::continuous_action_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fc9c8444f1e9ed5ULL;
  static const uint64_t static_value2 = 0xa0212e0b05e258d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robots_msg::continuous_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robots_msg/continuous_action";
  }

  static const char* value(const ::robots_msg::continuous_action_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robots_msg::continuous_action_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ContinuousAction\n"
"\n"
"# Provide information about the type of action the robot will perform\n"
"# Robot id\n"
"string robot_id\n"
"\n"
"# Continuous action\n"
"float32 left_motor\n"
"float32 right_motor\n"
;
  }

  static const char* value(const ::robots_msg::continuous_action_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robots_msg::continuous_action_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.left_motor);
      stream.next(m.right_motor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct continuous_action_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robots_msg::continuous_action_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robots_msg::continuous_action_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_id);
    s << indent << "left_motor: ";
    Printer<float>::stream(s, indent + "  ", v.left_motor);
    s << indent << "right_motor: ";
    Printer<float>::stream(s, indent + "  ", v.right_motor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTS_MSG_MESSAGE_CONTINUOUS_ACTION_H
