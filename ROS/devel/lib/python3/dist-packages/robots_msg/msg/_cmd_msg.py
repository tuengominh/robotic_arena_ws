# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robots_msg/cmd_msg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class cmd_msg(genpy.Message):
  _md5sum = "868042847d61ba4fb9f71e6ab3606ffb"
  _type = "robots_msg/cmd_msg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string label # label main task
string task  # label subtask
uint8 id     # [id, inst, op1, op2, op3, op4, op5, id]
uint8 inst
uint8 op1
uint8 op2
uint8 op3
uint8 op4
uint8 op5
"""
  __slots__ = ['label','task','id','inst','op1','op2','op3','op4','op5']
  _slot_types = ['string','string','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       label,task,id,inst,op1,op2,op3,op4,op5

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cmd_msg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.label is None:
        self.label = ''
      if self.task is None:
        self.task = ''
      if self.id is None:
        self.id = 0
      if self.inst is None:
        self.inst = 0
      if self.op1 is None:
        self.op1 = 0
      if self.op2 is None:
        self.op2 = 0
      if self.op3 is None:
        self.op3 = 0
      if self.op4 is None:
        self.op4 = 0
      if self.op5 is None:
        self.op5 = 0
    else:
      self.label = ''
      self.task = ''
      self.id = 0
      self.inst = 0
      self.op1 = 0
      self.op2 = 0
      self.op3 = 0
      self.op4 = 0
      self.op5 = 0

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
      _x = self.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.task
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.id, _x.inst, _x.op1, _x.op2, _x.op3, _x.op4, _x.op5))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.id, _x.inst, _x.op1, _x.op2, _x.op3, _x.op4, _x.op5,) = _get_struct_7B().unpack(str[start:end])
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
      _x = self.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.task
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.id, _x.inst, _x.op1, _x.op2, _x.op3, _x.op4, _x.op5))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.id, _x.inst, _x.op1, _x.op2, _x.op3, _x.op4, _x.op5,) = _get_struct_7B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7B = None
def _get_struct_7B():
    global _struct_7B
    if _struct_7B is None:
        _struct_7B = struct.Struct("<7B")
    return _struct_7B
