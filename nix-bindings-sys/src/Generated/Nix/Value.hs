{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Nix.Value
    ( Generated.Nix.Value.ValueType(..)
    , pattern Generated.Nix.Value.NIX_TYPE_THUNK
    , pattern Generated.Nix.Value.NIX_TYPE_INT
    , pattern Generated.Nix.Value.NIX_TYPE_FLOAT
    , pattern Generated.Nix.Value.NIX_TYPE_BOOL
    , pattern Generated.Nix.Value.NIX_TYPE_STRING
    , pattern Generated.Nix.Value.NIX_TYPE_PATH
    , pattern Generated.Nix.Value.NIX_TYPE_NULL
    , pattern Generated.Nix.Value.NIX_TYPE_ATTRS
    , pattern Generated.Nix.Value.NIX_TYPE_LIST
    , pattern Generated.Nix.Value.NIX_TYPE_FUNCTION
    , pattern Generated.Nix.Value.NIX_TYPE_EXTERNAL
    , pattern Generated.Nix.Value.NIX_TYPE_FAILED
    , Generated.Nix.Value.Nix_value
    , Generated.Nix.Value.EvalState
    , Generated.Nix.Value.BindingsBuilder
    , Generated.Nix.Value.ListBuilder
    , Generated.Nix.Value.PrimOp
    , Generated.Nix.Value.ExternalValue
    , Generated.Nix.Value.Nix_realised_string
    , Generated.Nix.Value.PrimOpFun_Aux(..)
    , Generated.Nix.Value.PrimOpFun(..)
    )
  where

import qualified Generated.Nix.Util
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @enum ValueType@

    __defined at:__ @nix_api_value.h 53:9@

    __exported by:__ @nix_api_value.h@
-}
newtype ValueType = ValueType
  { unwrapValueType :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize ValueType where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw ValueType where

  readRaw =
    \ptr0 ->
          pure ValueType
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw ValueType where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          ValueType unwrapValueType2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrapValueType2

deriving via Marshal.EquivStorable ValueType instance RIP.Storable ValueType

deriving via RIP.CUInt instance RIP.Prim ValueType

instance CEnum.CEnum ValueType where

  type CEnumZ ValueType = RIP.CUInt

  toCEnum = ValueType

  fromCEnum = unwrapValueType

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "NIX_TYPE_THUNK")
                                   , (1, RIP.singleton "NIX_TYPE_INT")
                                   , (2, RIP.singleton "NIX_TYPE_FLOAT")
                                   , (3, RIP.singleton "NIX_TYPE_BOOL")
                                   , (4, RIP.singleton "NIX_TYPE_STRING")
                                   , (5, RIP.singleton "NIX_TYPE_PATH")
                                   , (6, RIP.singleton "NIX_TYPE_NULL")
                                   , (7, RIP.singleton "NIX_TYPE_ATTRS")
                                   , (8, RIP.singleton "NIX_TYPE_LIST")
                                   , (9, RIP.singleton "NIX_TYPE_FUNCTION")
                                   , (10, RIP.singleton "NIX_TYPE_EXTERNAL")
                                   , (11, RIP.singleton "NIX_TYPE_FAILED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "ValueType"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "ValueType"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum ValueType where

  minDeclaredValue = NIX_TYPE_THUNK

  maxDeclaredValue = NIX_TYPE_FAILED

instance Show ValueType where

  showsPrec = CEnum.shows

instance Read ValueType where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrapValueType" (RIP.Ptr ValueType) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapValueType")

instance HasCField.HasCField ValueType "unwrapValueType" where

  type CFieldType ValueType "unwrapValueType" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @NIX_TYPE_THUNK@

    __defined at:__ @nix_api_value.h 61:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_THUNK :: ValueType
pattern NIX_TYPE_THUNK = ValueType 0

{-| __C declaration:__ @NIX_TYPE_INT@

    __defined at:__ @nix_api_value.h 65:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_INT :: ValueType
pattern NIX_TYPE_INT = ValueType 1

{-| __C declaration:__ @NIX_TYPE_FLOAT@

    __defined at:__ @nix_api_value.h 69:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_FLOAT :: ValueType
pattern NIX_TYPE_FLOAT = ValueType 2

{-| __C declaration:__ @NIX_TYPE_BOOL@

    __defined at:__ @nix_api_value.h 73:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_BOOL :: ValueType
pattern NIX_TYPE_BOOL = ValueType 3

{-| __C declaration:__ @NIX_TYPE_STRING@

    __defined at:__ @nix_api_value.h 79:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_STRING :: ValueType
pattern NIX_TYPE_STRING = ValueType 4

{-| __C declaration:__ @NIX_TYPE_PATH@

    __defined at:__ @nix_api_value.h 83:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_PATH :: ValueType
pattern NIX_TYPE_PATH = ValueType 5

{-| __C declaration:__ @NIX_TYPE_NULL@

    __defined at:__ @nix_api_value.h 87:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_NULL :: ValueType
pattern NIX_TYPE_NULL = ValueType 6

{-| __C declaration:__ @NIX_TYPE_ATTRS@

    __defined at:__ @nix_api_value.h 91:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_ATTRS :: ValueType
pattern NIX_TYPE_ATTRS = ValueType 7

{-| __C declaration:__ @NIX_TYPE_LIST@

    __defined at:__ @nix_api_value.h 95:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_LIST :: ValueType
pattern NIX_TYPE_LIST = ValueType 8

{-| __C declaration:__ @NIX_TYPE_FUNCTION@

    __defined at:__ @nix_api_value.h 99:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_FUNCTION :: ValueType
pattern NIX_TYPE_FUNCTION = ValueType 9

{-| __C declaration:__ @NIX_TYPE_EXTERNAL@

    __defined at:__ @nix_api_value.h 103:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_EXTERNAL :: ValueType
pattern NIX_TYPE_EXTERNAL = ValueType 10

{-| __C declaration:__ @NIX_TYPE_FAILED@

    __defined at:__ @nix_api_value.h 104:5@

    __exported by:__ @nix_api_value.h@
-}
pattern NIX_TYPE_FAILED :: ValueType
pattern NIX_TYPE_FAILED = ValueType 11

{-| __C declaration:__ @struct nix_value@

    __defined at:__ @nix_api_value.h 108:16@

    __exported by:__ @nix_api_value.h@
-}
data Nix_value

{-| __C declaration:__ @struct EvalState@

    __defined at:__ @nix_api_value.h 109:16@

    __exported by:__ @nix_api_value.h@
-}
data EvalState

{-| __C declaration:__ @struct BindingsBuilder@

    __defined at:__ @nix_api_value.h 131:16@

    __exported by:__ @nix_api_value.h@
-}
data BindingsBuilder

{-| __C declaration:__ @struct ListBuilder@

    __defined at:__ @nix_api_value.h 149:16@

    __exported by:__ @nix_api_value.h@
-}
data ListBuilder

{-| __C declaration:__ @struct PrimOp@

    __defined at:__ @nix_api_value.h 158:16@

    __exported by:__ @nix_api_value.h@
-}
data PrimOp

{-| __C declaration:__ @struct ExternalValue@

    __defined at:__ @nix_api_value.h 166:16@

    __exported by:__ @nix_api_value.h@
-}
data ExternalValue

{-| __C declaration:__ @struct nix_realised_string@

    __defined at:__ @nix_api_value.h 172:16@

    __exported by:__ @nix_api_value.h@
-}
data Nix_realised_string

{-| Auxiliary type used by 'PrimOpFun'

__C declaration:__ @PrimOpFun@

__defined at:__ @nix_api_value.h 187:16@

__exported by:__ @nix_api_value.h@
-}
newtype PrimOpFun_Aux = PrimOpFun_Aux
  { unwrapPrimOpFun_Aux :: (RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO ()
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_e000a682f138489b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @toPrimOpFun_Aux@
hs_bindgen_e000a682f138489b ::
     PrimOpFun_Aux
  -> IO (RIP.FunPtr PrimOpFun_Aux)
hs_bindgen_e000a682f138489b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_e000a682f138489b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5547aac54a4ffe42_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @fromPrimOpFun_Aux@
hs_bindgen_5547aac54a4ffe42 ::
     RIP.FunPtr PrimOpFun_Aux
  -> PrimOpFun_Aux
hs_bindgen_5547aac54a4ffe42 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5547aac54a4ffe42_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr PrimOpFun_Aux where

  toFunPtr = hs_bindgen_e000a682f138489b

instance RIP.FromFunPtr PrimOpFun_Aux where

  fromFunPtr = hs_bindgen_5547aac54a4ffe42

instance ( ((~) ty) ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO ())
         ) => RIP.HasField "unwrapPrimOpFun_Aux" (RIP.Ptr PrimOpFun_Aux) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapPrimOpFun_Aux")

instance HasCField.HasCField PrimOpFun_Aux "unwrapPrimOpFun_Aux" where

  type CFieldType PrimOpFun_Aux "unwrapPrimOpFun_Aux" =
    (RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Util.Nix_c_context) -> (RIP.Ptr EvalState) -> (RIP.Ptr (RIP.Ptr Nix_value)) -> (RIP.Ptr Nix_value) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PrimOpFun@

    __defined at:__ @nix_api_value.h 187:16@

    __exported by:__ @nix_api_value.h@
-}
newtype PrimOpFun = PrimOpFun
  { unwrapPrimOpFun :: RIP.FunPtr PrimOpFun_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr PrimOpFun_Aux)
         ) => RIP.HasField "unwrapPrimOpFun" (RIP.Ptr PrimOpFun) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapPrimOpFun")

instance HasCField.HasCField PrimOpFun "unwrapPrimOpFun" where

  type CFieldType PrimOpFun "unwrapPrimOpFun" =
    RIP.FunPtr PrimOpFun_Aux

  offset# = \_ -> \_ -> 0
