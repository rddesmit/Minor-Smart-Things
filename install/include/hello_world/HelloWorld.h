// Generated by gencpp from file hello_world/HelloWorld.msg
// DO NOT EDIT!


#ifndef HELLO_WORLD_MESSAGE_HELLOWORLD_H
#define HELLO_WORLD_MESSAGE_HELLOWORLD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello_world
{
template <class ContainerAllocator>
struct HelloWorld_
{
  typedef HelloWorld_<ContainerAllocator> Type;

  HelloWorld_()
    : hello()
    , world()  {
    }
  HelloWorld_(const ContainerAllocator& _alloc)
    : hello(_alloc)
    , world(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _hello_type;
  _hello_type hello;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _world_type;
  _world_type world;




  typedef boost::shared_ptr< ::hello_world::HelloWorld_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_world::HelloWorld_<ContainerAllocator> const> ConstPtr;

}; // struct HelloWorld_

typedef ::hello_world::HelloWorld_<std::allocator<void> > HelloWorld;

typedef boost::shared_ptr< ::hello_world::HelloWorld > HelloWorldPtr;
typedef boost::shared_ptr< ::hello_world::HelloWorld const> HelloWorldConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_world::HelloWorld_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_world::HelloWorld_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hello_world

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'hello_world': ['/home/rddesmit/catkin_ws/src/hello_world/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::HelloWorld_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::HelloWorld_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::HelloWorld_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::HelloWorld_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::HelloWorld_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::HelloWorld_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_world::HelloWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdd98ecc2261ce88f1eb6afa0922e5b9";
  }

  static const char* value(const ::hello_world::HelloWorld_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdd98ecc2261ce88ULL;
  static const uint64_t static_value2 = 0xf1eb6afa0922e5b9ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_world::HelloWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_world/HelloWorld";
  }

  static const char* value(const ::hello_world::HelloWorld_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_world::HelloWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string hello\n\
string world\n\
";
  }

  static const char* value(const ::hello_world::HelloWorld_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_world::HelloWorld_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.hello);
      stream.next(m.world);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct HelloWorld_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_world::HelloWorld_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_world::HelloWorld_<ContainerAllocator>& v)
  {
    s << indent << "hello: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.hello);
    s << indent << "world: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.world);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_WORLD_MESSAGE_HELLOWORLD_H
