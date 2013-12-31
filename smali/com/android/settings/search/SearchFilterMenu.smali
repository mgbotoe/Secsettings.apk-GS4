.class public Lcom/android/settings/search/SearchFilterMenu;
.super Ljava/lang/Object;
.source "SearchFilterMenu.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 253
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 265
    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 31
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 33
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_7

    .line 34
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 35
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 36
    const-string v3, "lock_screen_clock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 37
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 38
    const-string v3, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 39
    const-string v3, "owner_info_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 40
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 41
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 42
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 43
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 44
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 45
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 46
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 47
    const-string v3, "quick_note"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 48
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 49
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 50
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    :sswitch_0
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, state:I
    if-ne v2, v6, :cond_f

    .line 231
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_2

    .line 233
    :cond_1
    const-string v3, "sim_lock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 234
    const-string v3, "sim_toggle"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 235
    const-string v3, "sim_pin"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 239
    :cond_2
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, inputMethodId:Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 241
    const-string v3, "sip_feedback_sound"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 242
    const-string v3, "sip_feedback_vibration"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 245
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    const-string v3, "lockscreen_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 247
    const-string v3, "both_wallpaper"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 249
    :cond_4
    return-void

    .line 52
    .end local v0           #inputMethodId:Ljava/lang/String;
    .end local v2           #state:I
    :cond_5
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 53
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 54
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 55
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 56
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 57
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_6

    .line 59
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 60
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 62
    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 68
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 69
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 70
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 71
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 72
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 73
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 74
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 75
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 76
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 79
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 80
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 81
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 82
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 83
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 84
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 85
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 89
    :sswitch_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 91
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 93
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 94
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 95
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 96
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 97
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 98
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 99
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 100
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :sswitch_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 104
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 105
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 106
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 107
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 108
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 109
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 110
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 111
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 112
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :sswitch_3
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 116
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 117
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 118
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 119
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 120
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 121
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 122
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 123
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 124
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 125
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :sswitch_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 129
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 130
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 131
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 132
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 133
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 134
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 135
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 136
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 137
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :sswitch_5
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 143
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 144
    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 145
    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 146
    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 147
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 148
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 149
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 150
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 151
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 152
    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_c

    .line 158
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 159
    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 160
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 161
    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 162
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 163
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 164
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 165
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 166
    const-string v3, "multiple_lock_screen"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 167
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 168
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 169
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 170
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 171
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 172
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 173
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_b
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 176
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 177
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 178
    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 179
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 180
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 181
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 185
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 186
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 187
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 188
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 189
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 190
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 192
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 194
    :cond_d
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_e
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 197
    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 198
    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 199
    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 200
    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 201
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 202
    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 203
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 204
    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 209
    :sswitch_6
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :sswitch_7
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .restart local v2       #state:I
    :cond_f
    const-string v3, "unlock_set_smart"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x80000 -> :sswitch_2
        0x90000 -> :sswitch_4
    .end sparse-switch

    .line 205
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
