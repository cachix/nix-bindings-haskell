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

module Generated.Nix.External
    ( Generated.Nix.External.Nix_string_return
    , Generated.Nix.External.Nix_printer
    , Generated.Nix.External.Nix_string_context
    , Generated.Nix.External.NixCExternalValueDesc(..)
    )
  where

import qualified Generated.Nix.Expr
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct nix_string_return@

    __defined at:__ @nix_api_external.h 30:16@

    __exported by:__ @nix_api_external.h@
-}
data Nix_string_return

{-| __C declaration:__ @struct nix_printer@

    __defined at:__ @nix_api_external.h 34:16@

    __exported by:__ @nix_api_external.h@
-}
data Nix_printer

{-| __C declaration:__ @struct nix_string_context@

    __defined at:__ @nix_api_external.h 38:16@

    __exported by:__ @nix_api_external.h@
-}
data Nix_string_context

{-| __C declaration:__ @struct NixCExternalValueDesc@

    __defined at:__ @nix_api_external.h 78:16@

    __exported by:__ @nix_api_external.h@
-}
data NixCExternalValueDesc = NixCExternalValueDesc
  { nixCExternalValueDesc_print :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_printer) -> IO ())
    {- ^ __C declaration:__ @print@

         __defined at:__ @nix_api_external.h 86:12@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_showType :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ())
    {- ^ __C declaration:__ @showType@

         __defined at:__ @nix_api_external.h 92:12@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_typeOf :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ())
    {- ^ __C declaration:__ @typeOf@

         __defined at:__ @nix_api_external.h 98:12@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_coerceToString :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Nix_string_return) -> IO ())
    {- ^ __C declaration:__ @coerceToString@

         __defined at:__ @nix_api_external.h 113:12@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_equal :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
    {- ^ __C declaration:__ @equal@

         __defined at:__ @nix_api_external.h 126:11@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_printValueAsJSON :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CBool -> (RIP.Ptr Nix_string_context) -> RIP.CBool -> (RIP.Ptr Nix_string_return) -> IO ())
    {- ^ __C declaration:__ @printValueAsJSON@

         __defined at:__ @nix_api_external.h 140:12@

         __exported by:__ @nix_api_external.h@
    -}
  , nixCExternalValueDesc_printValueAsXML :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> IO ())
    {- ^ __C declaration:__ @printValueAsXML@

         __defined at:__ @nix_api_external.h 159:12@

         __exported by:__ @nix_api_external.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize NixCExternalValueDesc where

  staticSizeOf = \_ -> (56 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw NixCExternalValueDesc where

  readRaw =
    \ptr0 ->
          pure NixCExternalValueDesc
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_print") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_showType") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_typeOf") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_coerceToString") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_equal") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_printValueAsJSON") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"nixCExternalValueDesc_printValueAsXML") ptr0

instance Marshal.WriteRaw NixCExternalValueDesc where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          NixCExternalValueDesc
            nixCExternalValueDesc_print2
            nixCExternalValueDesc_showType3
            nixCExternalValueDesc_typeOf4
            nixCExternalValueDesc_coerceToString5
            nixCExternalValueDesc_equal6
            nixCExternalValueDesc_printValueAsJSON7
            nixCExternalValueDesc_printValueAsXML8 ->
                 HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_print") ptr0 nixCExternalValueDesc_print2
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_showType") ptr0 nixCExternalValueDesc_showType3
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_typeOf") ptr0 nixCExternalValueDesc_typeOf4
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_coerceToString") ptr0 nixCExternalValueDesc_coerceToString5
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_equal") ptr0 nixCExternalValueDesc_equal6
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_printValueAsJSON") ptr0 nixCExternalValueDesc_printValueAsJSON7
              >> HasCField.writeRaw (RIP.Proxy @"nixCExternalValueDesc_printValueAsXML") ptr0 nixCExternalValueDesc_printValueAsXML8

deriving via Marshal.EquivStorable NixCExternalValueDesc instance RIP.Storable NixCExternalValueDesc

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_print" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_print" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_printer) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_printer) -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_print" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_print")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_showType" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_showType" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_showType" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_showType")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_typeOf" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_typeOf" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_return) -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_typeOf" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_typeOf")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_coerceToString" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_coerceToString" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Nix_string_return) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Nix_string_return) -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_coerceToString" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_coerceToString")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_equal" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_equal" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
         ) => RIP.HasField "nixCExternalValueDesc_equal" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_equal")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_printValueAsJSON" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_printValueAsJSON" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CBool -> (RIP.Ptr Nix_string_context) -> RIP.CBool -> (RIP.Ptr Nix_string_return) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CBool -> (RIP.Ptr Nix_string_context) -> RIP.CBool -> (RIP.Ptr Nix_string_return) -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_printValueAsJSON" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_printValueAsJSON")

instance HasCField.HasCField NixCExternalValueDesc "nixCExternalValueDesc_printValueAsXML" where

  type CFieldType NixCExternalValueDesc "nixCExternalValueDesc_printValueAsXML" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Generated.Nix.Expr.EvalState) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Nix_string_context) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> IO ()))
         ) => RIP.HasField "nixCExternalValueDesc_printValueAsXML" (RIP.Ptr NixCExternalValueDesc) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"nixCExternalValueDesc_printValueAsXML")
