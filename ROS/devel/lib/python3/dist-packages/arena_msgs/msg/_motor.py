# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from arena_msgs/motor.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class motor(genpy.Message):
  _md5sum = "2fa8cbcf1466cb2e33624b31d90f1f01"
  _type = "arena_msgs/motor"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 speed # 0..255 to ecology20 and 0..180 to tanke20
uint8 dir # 0 stop 1:CW 2:CCW
int16 pos # position 

"""
  __slots__ = ['speed','dir','pos']
  _slot_types = ['uint8','uint8','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       speed,dir,pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(motor, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.speed is None:
        self.speed = 0
      if self.dir is None:
        self.dir = 0
      if self.pos is None:
        self.pos = 0
    else:
      self.speed = 0
      self.dir = 0
      self.pos = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2Bh().pack(_x.speed, _x.dir, _x.pos))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.speed, _x.dir, _x.pos,) = _get_struct_2Bh().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2Bh().pack(_x.speed, _x.dir, _x.pos))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.speed, _x.dir, _x.pos,) = _get_struct_2Bh().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bh = None
def _get_struct_2Bh():
    global _struct_2Bh
    if _struct_2Bh is None:
        _struct_2Bh = struct.Struct("<2Bh")
    return _struct_2Bh
