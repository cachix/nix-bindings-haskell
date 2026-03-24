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

module Generated.Nix.Util
    ( Generated.Nix.Util.Nix_err(..)
    , pattern Generated.Nix.Util.NIX_OK
    , pattern Generated.Nix.Util.NIX_ERR_UNKNOWN
    , pattern Generated.Nix.Util.NIX_ERR_OVERFLOW
    , pattern Generated.Nix.Util.NIX_ERR_KEY
    , pattern Generated.Nix.Util.NIX_ERR_NIX_ERROR
    , pattern Generated.Nix.Util.NIX_ERR_RECOVERABLE
    , Generated.Nix.Util.Nix_verbosity(..)
    , pattern Generated.Nix.Util.NIX_LVL_ERROR
    , pattern Generated.Nix.Util.NIX_LVL_WARN
    , pattern Generated.Nix.Util.NIX_LVL_NOTICE
    , pattern Generated.Nix.Util.NIX_LVL_INFO
    , pattern Generated.Nix.Util.NIX_LVL_TALKATIVE
    , pattern Generated.Nix.Util.NIX_LVL_CHATTY
    , pattern Generated.Nix.Util.NIX_LVL_DEBUG
    , pattern Generated.Nix.Util.NIX_LVL_VOMIT
    , Generated.Nix.Util.Nix_c_context
    , Generated.Nix.Util.Nix_get_string_callback_Aux(..)
    , Generated.Nix.Util.Nix_get_string_callback(..)
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @enum nix_err@

    __defined at:__ @nix_api_util.h 59:6@

    __exported by:__ @nix_api_util.h@
-}
newtype Nix_err = Nix_err
  { unwrapNix_err :: RIP.CInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Nix_err where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Nix_err where

  readRaw =
    \ptr0 ->
          pure Nix_err
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Nix_err where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Nix_err unwrapNix_err2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrapNix_err2

deriving via Marshal.EquivStorable Nix_err instance RIP.Storable Nix_err

deriving via RIP.CInt instance RIP.Prim Nix_err

instance CEnum.CEnum Nix_err where

  type CEnumZ Nix_err = RIP.CInt

  toCEnum = Nix_err

  fromCEnum = unwrapNix_err

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (-5, RIP.singleton "NIX_ERR_RECOVERABLE")
                                   , (-4, RIP.singleton "NIX_ERR_NIX_ERROR")
                                   , (-3, RIP.singleton "NIX_ERR_KEY")
                                   , (-2, RIP.singleton "NIX_ERR_OVERFLOW")
                                   , (-1, RIP.singleton "NIX_ERR_UNKNOWN")
                                   , (0, RIP.singleton "NIX_OK")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Nix_err"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Nix_err"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Nix_err where

  minDeclaredValue = NIX_ERR_RECOVERABLE

  maxDeclaredValue = NIX_OK

instance Show Nix_err where

  showsPrec = CEnum.shows

instance Read Nix_err where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "unwrapNix_err" (RIP.Ptr Nix_err) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapNix_err")

instance HasCField.HasCField Nix_err "unwrapNix_err" where

  type CFieldType Nix_err "unwrapNix_err" = RIP.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @NIX_OK@

    __defined at:__ @nix_api_util.h 67:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_OK :: Nix_err
pattern NIX_OK = Nix_err 0

{-| __C declaration:__ @NIX_ERR_UNKNOWN@

    __defined at:__ @nix_api_util.h 75:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_ERR_UNKNOWN :: Nix_err
pattern NIX_ERR_UNKNOWN = Nix_err (-1)

{-| __C declaration:__ @NIX_ERR_OVERFLOW@

    __defined at:__ @nix_api_util.h 83:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_ERR_OVERFLOW :: Nix_err
pattern NIX_ERR_OVERFLOW = Nix_err (-2)

{-| __C declaration:__ @NIX_ERR_KEY@

    __defined at:__ @nix_api_util.h 102:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_ERR_KEY :: Nix_err
pattern NIX_ERR_KEY = Nix_err (-3)

{-| __C declaration:__ @NIX_ERR_NIX_ERROR@

    __defined at:__ @nix_api_util.h 110:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_ERR_NIX_ERROR :: Nix_err
pattern NIX_ERR_NIX_ERROR = Nix_err (-4)

{-| __C declaration:__ @NIX_ERR_RECOVERABLE@

    __defined at:__ @nix_api_util.h 118:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_ERR_RECOVERABLE :: Nix_err
pattern NIX_ERR_RECOVERABLE = Nix_err (-5)

{-| __C declaration:__ @enum nix_verbosity@

    __defined at:__ @nix_api_util.h 128:6@

    __exported by:__ @nix_api_util.h@
-}
newtype Nix_verbosity = Nix_verbosity
  { unwrapNix_verbosity :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Nix_verbosity where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Nix_verbosity where

  readRaw =
    \ptr0 ->
          pure Nix_verbosity
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Nix_verbosity where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Nix_verbosity unwrapNix_verbosity2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrapNix_verbosity2

deriving via Marshal.EquivStorable Nix_verbosity instance RIP.Storable Nix_verbosity

deriving via RIP.CUInt instance RIP.Prim Nix_verbosity

instance CEnum.CEnum Nix_verbosity where

  type CEnumZ Nix_verbosity = RIP.CUInt

  toCEnum = Nix_verbosity

  fromCEnum = unwrapNix_verbosity

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "NIX_LVL_ERROR")
                                   , (1, RIP.singleton "NIX_LVL_WARN")
                                   , (2, RIP.singleton "NIX_LVL_NOTICE")
                                   , (3, RIP.singleton "NIX_LVL_INFO")
                                   , (4, RIP.singleton "NIX_LVL_TALKATIVE")
                                   , (5, RIP.singleton "NIX_LVL_CHATTY")
                                   , (6, RIP.singleton "NIX_LVL_DEBUG")
                                   , (7, RIP.singleton "NIX_LVL_VOMIT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Nix_verbosity"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Nix_verbosity"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Nix_verbosity where

  minDeclaredValue = NIX_LVL_ERROR

  maxDeclaredValue = NIX_LVL_VOMIT

instance Show Nix_verbosity where

  showsPrec = CEnum.shows

instance Read Nix_verbosity where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrapNix_verbosity" (RIP.Ptr Nix_verbosity) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapNix_verbosity")

instance HasCField.HasCField Nix_verbosity "unwrapNix_verbosity" where

  type CFieldType Nix_verbosity "unwrapNix_verbosity" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @NIX_LVL_ERROR@

    __defined at:__ @nix_api_util.h 129:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_ERROR :: Nix_verbosity
pattern NIX_LVL_ERROR = Nix_verbosity 0

{-| __C declaration:__ @NIX_LVL_WARN@

    __defined at:__ @nix_api_util.h 130:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_WARN :: Nix_verbosity
pattern NIX_LVL_WARN = Nix_verbosity 1

{-| __C declaration:__ @NIX_LVL_NOTICE@

    __defined at:__ @nix_api_util.h 131:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_NOTICE :: Nix_verbosity
pattern NIX_LVL_NOTICE = Nix_verbosity 2

{-| __C declaration:__ @NIX_LVL_INFO@

    __defined at:__ @nix_api_util.h 132:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_INFO :: Nix_verbosity
pattern NIX_LVL_INFO = Nix_verbosity 3

{-| __C declaration:__ @NIX_LVL_TALKATIVE@

    __defined at:__ @nix_api_util.h 133:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_TALKATIVE :: Nix_verbosity
pattern NIX_LVL_TALKATIVE = Nix_verbosity 4

{-| __C declaration:__ @NIX_LVL_CHATTY@

    __defined at:__ @nix_api_util.h 134:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_CHATTY :: Nix_verbosity
pattern NIX_LVL_CHATTY = Nix_verbosity 5

{-| __C declaration:__ @NIX_LVL_DEBUG@

    __defined at:__ @nix_api_util.h 135:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_DEBUG :: Nix_verbosity
pattern NIX_LVL_DEBUG = Nix_verbosity 6

{-| __C declaration:__ @NIX_LVL_VOMIT@

    __defined at:__ @nix_api_util.h 136:5@

    __exported by:__ @nix_api_util.h@
-}
pattern NIX_LVL_VOMIT :: Nix_verbosity
pattern NIX_LVL_VOMIT = Nix_verbosity 7

{-| __C declaration:__ @struct nix_c_context@

    __defined at:__ @nix_api_util.h 160:16@

    __exported by:__ @nix_api_util.h@
-}
data Nix_c_context

{-| Auxiliary type used by 'Nix_get_string_callback'

__C declaration:__ @nix_get_string_callback@

__defined at:__ @nix_api_util.h 171:16@

__exported by:__ @nix_api_util.h@
-}
newtype Nix_get_string_callback_Aux = Nix_get_string_callback_Aux
  { unwrapNix_get_string_callback_Aux :: (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> (RIP.Ptr RIP.Void) -> IO ()
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_8e4b92991b1ff6ca_base ::
     ((RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @toNix_get_string_callback_Aux@
hs_bindgen_8e4b92991b1ff6ca ::
     Nix_get_string_callback_Aux
  -> IO (RIP.FunPtr Nix_get_string_callback_Aux)
hs_bindgen_8e4b92991b1ff6ca =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_8e4b92991b1ff6ca_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7274b72bebd371ca_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @fromNix_get_string_callback_Aux@
hs_bindgen_7274b72bebd371ca ::
     RIP.FunPtr Nix_get_string_callback_Aux
  -> Nix_get_string_callback_Aux
hs_bindgen_7274b72bebd371ca =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7274b72bebd371ca_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr Nix_get_string_callback_Aux where

  toFunPtr = hs_bindgen_8e4b92991b1ff6ca

instance RIP.FromFunPtr Nix_get_string_callback_Aux where

  fromFunPtr = hs_bindgen_7274b72bebd371ca

instance ( ((~) ty) ((PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> (RIP.Ptr RIP.Void) -> IO ())
         ) => RIP.HasField "unwrapNix_get_string_callback_Aux" (RIP.Ptr Nix_get_string_callback_Aux) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapNix_get_string_callback_Aux")

instance HasCField.HasCField Nix_get_string_callback_Aux "unwrapNix_get_string_callback_Aux" where

  type CFieldType Nix_get_string_callback_Aux "unwrapNix_get_string_callback_Aux" =
    (PtrConst.PtrConst RIP.CChar) -> RIP.CUInt -> (RIP.Ptr RIP.Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @nix_get_string_callback@

    __defined at:__ @nix_api_util.h 171:16@

    __exported by:__ @nix_api_util.h@
-}
newtype Nix_get_string_callback = Nix_get_string_callback
  { unwrapNix_get_string_callback :: RIP.FunPtr Nix_get_string_callback_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr Nix_get_string_callback_Aux)
         ) => RIP.HasField "unwrapNix_get_string_callback" (RIP.Ptr Nix_get_string_callback) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapNix_get_string_callback")

instance HasCField.HasCField Nix_get_string_callback "unwrapNix_get_string_callback" where

  type CFieldType Nix_get_string_callback "unwrapNix_get_string_callback" =
    RIP.FunPtr Nix_get_string_callback_Aux

  offset# = \_ -> \_ -> 0
