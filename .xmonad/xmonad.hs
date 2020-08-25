import XMonad
import XMonad.Layout.Tabbed
import XMonad.Layout.Accordion
import Data.Monoid
import System.Exit

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

------------------------------------------------------------------------
 
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
    [
      ((modm .|. shiftMask, xK_c     ), kill)
    , ((modm,               xK_Tab   ), sendMessage NextLayout)
    , ((modm,               xK_t     ), setLayout $ XMonad.layoutHook conf)
    , ((modm,               xK_n     ), refresh)
    , ((modm,               xK_j     ), windows W.focusDown)
    , ((modm,               xK_k     ), windows W.focusUp  )
    , ((modm .|. shiftMask, xK_Return), windows W.swapMaster)
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
    , ((modm,               xK_h     ), sendMessage Shrink)
    , ((modm,               xK_l     ), sendMessage Expand)
    , ((modm,               xK_space ), withFocused $ windows . W.sink)
    , ((modm .|. shiftMask, xK_h     ), sendMessage (IncMasterN 1))
    , ((modm .|. shiftMask, xK_l     ), sendMessage (IncMasterN (-1)))
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    ]
    ++
    [
      ((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
    ]

myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $
    [
      ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))
    , ((modm .|. shiftMask, button1), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))
    ]

------------------------------------------------------------------------
        --
myLayout = tiled ||| Mirror tiled ||| Full
  where
     tiled   = Tall nmaster delta ratio
     nmaster = 1
     ratio   = 1/2
     delta   = 3/100

------------------------------------------------------------------------
       
myManageHook = composeAll
    [ 
      className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    ]

myEventHook = mempty
myLogHook = return ()
myStartupHook = return ()

main = xmonad defaults

defaults = def {
        terminal           = "st",
        focusFollowsMouse  = False,
        clickJustFocuses   = False,
        borderWidth        = 2,
        modMask            = mod4Mask,
        workspaces         = map show [1..9],
        normalBorderColor  = "#1d2021",
        focusedBorderColor = "#458588",

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }
