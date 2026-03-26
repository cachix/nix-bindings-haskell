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

module Generated.Nix.Store.PathInfo
    ( Generated.Nix.Store.PathInfo.Store
    , Generated.Nix.Store.PathInfo.Nix_path_info_json_format(..)
    , pattern Generated.Nix.Store.PathInfo.NIX_PATH_INFO_JSON_FORMAT_V1
    , pattern Generated.Nix.Store.PathInfo.NIX_PATH_INFO_JSON_FORMAT_V2
    , pattern Generated.Nix.Store.PathInfo.NIX_PATH_INFO_JSON_FORMAT_V3
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct Store@

    __defined at:__ @nix_api_store\/path_info.h 22:16@

    __exported by:__ @nix_api_store\/path_info.h@
-}
data Store

{-| __C declaration:__ @enum nix_path_info_json_format@

    __defined at:__ @nix_api_store\/path_info.h 31:9@

    __exported by:__ @nix_api_store\/path_info.h@
-}
newtype Nix_path_info_json_format = Nix_path_info_json_format
  { unwrapNix_path_info_json_format :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Nix_path_info_json_format where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Nix_path_info_json_format where

  readRaw =
    \ptr0 ->
          pure Nix_path_info_json_format
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Nix_path_info_json_format where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Nix_path_info_json_format unwrapNix_path_info_json_format2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrapNix_path_info_json_format2

deriving via Marshal.EquivStorable Nix_path_info_json_format instance RIP.Storable Nix_path_info_json_format

deriving via RIP.CUInt instance RIP.Prim Nix_path_info_json_format

instance CEnum.CEnum Nix_path_info_json_format where

  type CEnumZ Nix_path_info_json_format = RIP.CUInt

  toCEnum = Nix_path_info_json_format

  fromCEnum = unwrapNix_path_info_json_format

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "NIX_PATH_INFO_JSON_FORMAT_V1")
                                   , (2, RIP.singleton "NIX_PATH_INFO_JSON_FORMAT_V2")
                                   , (3, RIP.singleton "NIX_PATH_INFO_JSON_FORMAT_V3")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Nix_path_info_json_format"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Nix_path_info_json_format"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Nix_path_info_json_format where

  minDeclaredValue = NIX_PATH_INFO_JSON_FORMAT_V1

  maxDeclaredValue = NIX_PATH_INFO_JSON_FORMAT_V3

instance Show Nix_path_info_json_format where

  showsPrec = CEnum.shows

instance Read Nix_path_info_json_format where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrapNix_path_info_json_format" (RIP.Ptr Nix_path_info_json_format) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unwrapNix_path_info_json_format")

instance HasCField.HasCField Nix_path_info_json_format "unwrapNix_path_info_json_format" where

  type CFieldType Nix_path_info_json_format "unwrapNix_path_info_json_format" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @NIX_PATH_INFO_JSON_FORMAT_V1@

    __defined at:__ @nix_api_store\/path_info.h 39:5@

    __exported by:__ @nix_api_store\/path_info.h@
-}
pattern NIX_PATH_INFO_JSON_FORMAT_V1 :: Nix_path_info_json_format
pattern NIX_PATH_INFO_JSON_FORMAT_V1 = Nix_path_info_json_format 1

{-| __C declaration:__ @NIX_PATH_INFO_JSON_FORMAT_V2@

    __defined at:__ @nix_api_store\/path_info.h 47:5@

    __exported by:__ @nix_api_store\/path_info.h@
-}
pattern NIX_PATH_INFO_JSON_FORMAT_V2 :: Nix_path_info_json_format
pattern NIX_PATH_INFO_JSON_FORMAT_V2 = Nix_path_info_json_format 2

{-| __C declaration:__ @NIX_PATH_INFO_JSON_FORMAT_V3@

    __defined at:__ @nix_api_store\/path_info.h 52:5@

    __exported by:__ @nix_api_store\/path_info.h@
-}
pattern NIX_PATH_INFO_JSON_FORMAT_V3 :: Nix_path_info_json_format
pattern NIX_PATH_INFO_JSON_FORMAT_V3 = Nix_path_info_json_format 3
