.class public Lcom/android/settings/nfc/SBeamEnabler;
.super Ljava/lang/Object;
.source "SBeamEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;
    }
.end annotation


# static fields
.field private static mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# instance fields
.field private mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqNfcTurnOn:Z

.field private mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

.field private mSbeamSwitch:Landroid/widget/Switch;

.field private mbOn:Z

.field private mbOnLastState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "sbeam"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 64
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 66
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 68
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 70
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 72
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 84
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 402
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 98
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 100
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 101
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V
    .locals 3
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "helpCtrl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 64
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 66
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 68
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 70
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 72
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 84
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 402
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 113
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 115
    iput-object p3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 122
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeamEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->changedSbeamState(Landroid/content/Intent;)V

    return-void
.end method

.method private changedSbeamState(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    .line 344
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    .local v0, bOn:Z
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.changedSbeamState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 347
    return-void
.end method

.method private disableButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 357
    :cond_1
    return-void
.end method

.method private initEnabler()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 200
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.initEnabler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 204
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static initPreferenceForSbeam(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    const-string v5, "[SBeam]"

    const-string v6, "SBeamEnabler.initPreferenceForSbeam"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v5, "pref_sbeam"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 453
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "SBeam_support"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    const-string v5, "SBeam_support"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    :cond_0
    const-string v5, "SBeam_on_off"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sbeam_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 467
    .local v1, modeOn:I
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.initPreferenceForSbeam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v5, "SBeam_on_off"

    if-ne v1, v3, :cond_3

    :goto_0
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    .end local v1           #modeOn:I
    :cond_1
    const-string v3, "sbeam_last_status"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    return-void

    .restart local v1       #modeOn:I
    :cond_3
    move v3, v4

    .line 468
    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 548
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    const-string v1, "[SBeam]"

    const-string v2, "The S-beam should not be turned on in Operator AirPlane mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v1, 0x0

    .line 558
    :goto_0
    return v1

    .line 557
    :cond_1
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.isAllowSBeamOnAirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAllowWifiByDevicePolicy(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 532
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 535
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.isAllowWifiByDevicePolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBeamOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 519
    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 521
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "SBeam_on_off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static procAbeamChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 484
    const-string v1, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const-string v1, "android.nfc.extra.ABEAM_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 489
    .local v0, bAbeamOn:Z
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.procAbeamChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-nez v0, :cond_0

    .line 495
    invoke-static {p0, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .parameter "bOn"

    .prologue
    .line 392
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    if-eqz p1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;->dismiss()V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;->show()V

    goto :goto_0
.end method

.method public static saveSbeamOn(Landroid/content/Context;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "bOn"
    .parameter "bSavedLastState"

    .prologue
    const/4 v2, 0x0

    .line 499
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.saveSbeamOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    :cond_0
    const/4 p1, 0x0

    .line 507
    :cond_1
    const-string v3, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 509
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SBeam_on_off"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 511
    if-eqz p2, :cond_2

    .line 512
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sbeam_mode"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    return-void
.end method

.method private sendSBeamOff()V
    .locals 3

    .prologue
    .line 440
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.sendSBeamOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, i:Landroid/content/Intent;
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method private setABeamSwitchStatus(ZZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bCheck"
    .parameter "bSummary"

    .prologue
    .line 576
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const/4 p1, 0x0

    .line 578
    const/4 p2, 0x0

    .line 579
    const/4 p3, 0x0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 596
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 590
    :cond_2
    if-eqz p3, :cond_3

    .line 591
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0902a9

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0902aa

    goto :goto_1
.end method

.method private setState(ZZ)V
    .locals 4
    .parameter "bEnable"
    .parameter "bOn"

    .prologue
    const/4 v3, 0x0

    .line 361
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const/4 p1, 0x0

    .line 367
    const/4 p2, 0x0

    .line 370
    :cond_1
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : Enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") On("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v3}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 374
    iput-boolean p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 376
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 378
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : isChecked ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 387
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 389
    :cond_3
    return-void
.end method

.method public static showAirplaneMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 562
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler. showAirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const v0, 0x7f0902ea

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 564
    return-void
.end method

.method public static showNotAllowWifi(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 543
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.showNotAllowWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const v0, 0x7f0902ba

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    return-void
.end method

.method private turnOn(Z)Z
    .locals 7
    .parameter "bOn"

    .prologue
    const v6, 0x7f0902b9

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 210
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v4

    .line 216
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 218
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 222
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 224
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->showAirplaneMode(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 229
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 231
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 232
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 235
    .local v0, nState:I
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn : Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    .line 237
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 240
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 242
    :cond_4
    if-eq v5, v0, :cond_5

    const/4 v1, 0x2

    if-eq v1, v0, :cond_5

    .line 243
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 245
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 246
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_0

    .line 250
    :cond_5
    if-ne v5, v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 254
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    goto/16 :goto_0
.end method

.method private validateNfcAdapter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 426
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 431
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 432
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : fail to get"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 433
    goto :goto_0
.end method


# virtual methods
.method public changedNfcState(ILandroid/content/Intent;)V
    .locals 5
    .parameter "newState"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.changedNfcState : REQ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] CUR ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    if-ne v4, p1, :cond_5

    .line 276
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_3

    .line 278
    iput-boolean v3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 281
    :cond_3
    if-eqz p2, :cond_4

    .line 282
    const-string v0, "android.nfc.extra.PREF_ADAPTER_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : POWER OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_0

    .line 289
    :cond_5
    const/4 v0, 0x3

    if-ne v0, p1, :cond_9

    .line 290
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : Enabled NDEF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-direct {p0, v4, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 312
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_0

    .line 300
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_8

    .line 301
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 302
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 304
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    goto :goto_1

    .line 309
    :cond_8
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 313
    :cond_9
    const/4 v0, 0x4

    if-ne v0, p1, :cond_a

    .line 314
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto/16 :goto_0

    .line 320
    :cond_a
    const/4 v0, 0x2

    if-ne v0, p1, :cond_b

    .line 321
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto/16 :goto_0

    .line 327
    :cond_b
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 328
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_CARD_MODE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto/16 :goto_0

    .line 338
    :cond_c
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto/16 :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "btnView"
    .parameter "bOn"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 177
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 180
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 172
    .end local p2
    :goto_0
    return v1

    .line 167
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 168
    .local v0, bOn:Z
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public procOnPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    return-void
.end method

.method public procOnResume()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 149
    :cond_3
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v0, "[SBeam]"

    const-string v1, "setSwitch !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 189
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
