{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Nix.Store.Path
    ( Generated.Nix.Store.Path.StorePath
    , Generated.Nix.Store.Path.Nix_store_path_hash_part(..)
    )
  where

import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct StorePath@

    __defined at:__ @nix_api_store\/store_path.h 24:16@

    __exported by:__ @nix_api_store\/store_path.h@
-}
data StorePath

{-| __C declaration:__ @struct nix_store_path_hash_part@

    __defined at:__ @nix_api_store\/store_path.h 55:16@

    __exported by:__ @nix_api_store\/store_path.h@
-}
data Nix_store_path_hash_part = Nix_store_path_hash_part
  { nix_store_path_hash_part_bytes :: (CA.ConstantArray 20) HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @bytes@

         __defined at:__ @nix_api_store\/store_path.h 57:13@

         __exported by:__ @nix_api_store\/store_path.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Nix_store_path_hash_part where

  staticSizeOf = \_ -> (20 :: Int)

  staticAlignment = \_ -> (1 :: Int)

instance Marshal.ReadRaw Nix_store_path_hash_part where

  readRaw =
    \ptr0 ->
          pure Nix_store_path_hash_part
      <*> HasCField.readRaw (RIP.Proxy @"nix_store_path_hash_part_bytes") ptr0

instance Marshal.WriteRaw Nix_store_path_hash_part where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Nix_store_path_hash_part nix_store_path_hash_part_bytes2 ->
            HasCField.writeRaw (RIP.Proxy @"nix_store_path_hash_part_bytes") ptr0 nix_store_path_hash_part_bytes2

deriving via Marshal.EquivStorable Nix_store_path_hash_part instance RIP.Storable Nix_store_path_hash_part

instance HasCField.HasCField Nix_store_path_hash_part "nix_store_path_hash_part_bytes" where

  type CFieldType Nix_store_path_hash_part "nix_store_path_hash_part_bytes" =
    (CA.ConstantArray 20) HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) ((CA.ConstantArray 20) HsBindgen.Runtime.LibC.Word8)
         ) => RIP.HasField "nix_store_path_hash_part_bytes" (RIP.Ptr Nix_store_path_hash_part) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nix_store_path_hash_part_bytes")
