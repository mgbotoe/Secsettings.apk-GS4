.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private bTabStyle:Z

.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mKiesCategory:Landroid/preference/PreferenceCategory;

.field private mLastNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mMediaShareCategory:Landroid/preference/PreferenceCategory;

.field private mNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mNetworkCategory:Landroid/preference/PreferenceCategory;

.field private mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcWallet:Landroid/preference/PreferenceScreen;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

.field private mSmartNetworkObserver:Landroid/database/ContentObserver;

.field private mTetheredData:I

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiCallSwitchPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/WirelessSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 148
    iput v0, p0, Lcom/android/settings/WirelessSettings;->MHS_REQUEST:I

    .line 149
    iput v0, p0, Lcom/android/settings/WirelessSettings;->mTetheredData:I

    .line 161
    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    .line 180
    iput-object v1, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 479
    new-instance v0, Lcom/android/settings/WirelessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    .line 487
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    .line 495
    new-instance v0, Lcom/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$3;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;)Lcom/android/settings/SmartNetworkPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 470
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v1

    .line 474
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1144
    const v0, 0x7f090b15

    return v0
.end method

.method getNearbyEnabler(Landroid/app/Activity;)Lcom/android/settings/nearby/NearbyEnabler;
    .locals 2
    .parameter "activity"

    .prologue
    .line 1137
    const-string v1, "nearby_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 1139
    .local v0, nearby:Landroid/preference/SwitchPreferenceScreen;
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    return-object v1
.end method

.method getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings/nfc/NfcEnabler;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1092
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    .line 1093
    const-string v0, "s_beam_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    .line 1096
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1097
    if-nez v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "transfer_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1133
    :goto_0
    return-object v4

    .line 1103
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings.nfcsummary"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_2

    .line 1105
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_1
    if-eqz p2, :cond_1

    .line 1119
    const-string v0, "toggle_airplane"

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 1127
    :cond_1
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    move-object v5, v4

    check-cast v5, Landroid/preference/PreferenceScreen;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object v4, v0

    .line 1133
    goto :goto_0

    .line 1107
    :cond_2
    const v0, 0x7f0902a3

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    const-string v0, "CSCAppRes"

    const-string v1, "No data for CSCAppResourceUri"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v0, "toggle_nfc"

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setKey(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1066
    if-ne p1, v1, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    goto :goto_0

    .line 1076
    :cond_2
    if-nez p1, :cond_0

    .line 1078
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 37
    .parameter "savedInstanceState"

    .prologue
    .line 555
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 557
    const v33, 0x7f0700cc

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 559
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    if-eqz v33, :cond_1d

    const/4 v12, 0x1

    .line 584
    .local v12, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 586
    .local v2, activity:Landroid/app/Activity;
    const-string v33, "network_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNetworkCategory:Landroid/preference/PreferenceCategory;

    .line 587
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNetworkCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 591
    :cond_0
    const-string v33, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v33, v0

    const v34, 0x7f091477

    invoke-virtual/range {v33 .. v34}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 595
    :cond_1
    const-string v33, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 596
    .local v19, nsd:Landroid/preference/CheckBoxPreference;
    const-string v33, "enable_switch_wifi_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 598
    const-string v33, "button_smart_network_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Lcom/android/settings/SmartNetworkPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0c001c

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 600
    .local v13, isSupportedSmartNetwork:Z
    const-string v33, "jjh"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isSupportedSmartNetwork: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1e

    .line 602
    const-string v33, "jjh"

    const-string v34, "mButtonSmartNetworkEnabled != null"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_1
    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 611
    :cond_2
    const-string v33, "ro.csc.sales_code"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 612
    .local v26, salesCode:Ljava/lang/String;
    const-string v33, "rcs_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    .line 615
    .local v24, rcsSetting:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "auto_power_on_off_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    :cond_3
    new-instance v33, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "airplane_mode_toggleable_radios"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 629
    .local v28, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 650
    if-eqz v28, :cond_4

    const-string v33, "wifi"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_5

    .line 651
    :cond_4
    const-string v33, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    const-string v34, "toggle_airplane"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 653
    :cond_5
    if-eqz v12, :cond_6

    .line 654
    const-string v33, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 655
    const-string v33, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 659
    :cond_6
    if-eqz v28, :cond_7

    const-string v33, "bluetooth"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 664
    :cond_7
    if-nez v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 665
    :cond_8
    const-string v33, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 666
    const-string v33, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 670
    :cond_9
    const-string v33, "ALL"

    const-string v34, "ALL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 671
    const-string v33, "media_share_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 672
    .local v16, mediaShare:Landroid/preference/PreferenceCategory;
    const-string v33, "nearby_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 675
    .end local v16           #mediaShare:Landroid/preference/PreferenceCategory;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/WirelessSettings;->getNearbyEnabler(Landroid/app/Activity;)Lcom/android/settings/nearby/NearbyEnabler;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 678
    const-string v33, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 679
    .local v15, mGlobalProxy:Landroid/preference/Preference;
    const-string v33, "device_policy"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 682
    .local v14, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 683
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v33

    if-nez v33, :cond_1f

    const/16 v33, 0x1

    :goto_2
    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 686
    const-string v33, "connectivity"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 702
    .local v5, cm:Landroid/net/ConnectivityManager;
    if-nez v12, :cond_20

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v33

    if-eqz v33, :cond_20

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_20

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_b

    const-string v33, "ATT"

    const-string v34, "ro.csc.sales_code"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_20

    .line 705
    :cond_b
    const-string v33, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 715
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "settings_listui"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_c

    .line 718
    const-string v33, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_c

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 723
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "wifi_calling_holder_key"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 725
    .local v31, wifiCallingHolder:Landroid/preference/Preference;
    const/16 v32, 0x0

    .line 727
    .local v32, wifiCallingPreferenceScreen:Landroid/preference/PreferenceScreen;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    const v35, 0x7f0700c2

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v32

    .line 728
    const-string v33, "button_wifi_calling_key"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v31}, Landroid/preference/Preference;->getOrder()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/Preference;->setOrder(I)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "wfc_settings_holder_key"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 756
    .local v30, wfcHolder:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 759
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 760
    const-string v33, "persist.sys.roaming_menu"

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 761
    const-string v33, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 768
    :cond_d
    :goto_5
    const/4 v11, 0x0

    .line 770
    .local v11, isCellBroadcastAppLinkEnabled:Z
    if-eqz v11, :cond_e

    .line 771
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 772
    .local v22, pm:Landroid/content/pm/PackageManager;
    const-string v33, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 774
    const/4 v11, 0x0

    .line 780
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    :cond_e
    :goto_6
    if-nez v12, :cond_f

    if-nez v11, :cond_10

    .line 781
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    .line 782
    .local v25, root:Landroid/preference/PreferenceScreen;
    const-string v33, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 783
    .local v23, ps:Landroid/preference/Preference;
    if-eqz v23, :cond_10

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 787
    .end local v23           #ps:Landroid/preference/Preference;
    .end local v25           #root:Landroid/preference/PreferenceScreen;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string v34, "com.ipsec.vpnclient"

    invoke-static/range {v33 .. v34}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 789
    .local v9, hasAdvVpn:Z
    const-string v33, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_11

    const-string v33, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_23

    :cond_11
    if-eqz v9, :cond_23

    .line 790
    const-string v33, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 796
    :goto_7
    const-string v33, "media_share_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    .line 797
    const-string v33, "kies_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v33, v0

    const-string v34, "screen_mirroring_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 818
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    const-string v34, "com.sec.android.app.kieswifi"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 824
    :goto_8
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v33

    if-eqz v33, :cond_12

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "usb_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 829
    :cond_12
    const/4 v4, 0x0

    .line 830
    .local v4, bToggleableNFC:Z
    if-eqz v28, :cond_13

    const-string v33, "nfc"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_14

    .line 831
    :cond_13
    const/4 v4, 0x1

    .line 834
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "settings_listui"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_24

    const/16 v33, 0x1

    :goto_9
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    .line 835
    const-string v33, "nfc_wallet_manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    .line 840
    const-string v33, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    .line 841
    .local v18, nfcCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 844
    const-string v33, "nfc_default_transaction"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    .line 850
    const-string v33, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .end local v18           #nfcCategory:Landroid/preference/PreferenceCategory;
    check-cast v18, Landroid/preference/PreferenceCategory;

    .line 851
    .restart local v18       #nfcCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 853
    :cond_15
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/WirelessSettings;->getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings/nfc/NfcEnabler;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 859
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 860
    .local v3, bEnableRcs:Z
    const-string v33, "WirelessSettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RCS availability: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-eqz v3, :cond_25

    .line 863
    const-string v33, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    .line 864
    .local v21, parent:Landroid/preference/PreferenceScreen;
    new-instance v33, Lcom/android/settings/rcs/RcsSettings;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 871
    .end local v21           #parent:Landroid/preference/PreferenceScreen;
    :cond_16
    :goto_a
    const-string v33, "MTR"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 876
    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 877
    const-string v33, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 878
    .local v17, nfcCat:Landroid/preference/PreferenceGroup;
    if-eqz v17, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 883
    .end local v17           #nfcCat:Landroid/preference/PreferenceGroup;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/WirelessSettings;->bTabStyle:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1b

    .line 884
    const-string v33, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_19

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 886
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 888
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1b

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 894
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 895
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 896
    sget v33, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1c

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 898
    .local v8, extra_bundle:Landroid/os/Bundle;
    const-string v33, "extra_parent_preference_key"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 899
    .local v27, targetKey:Ljava/lang/String;
    sget v33, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    const/16 v29, 0x1

    .line 900
    .local v29, value:Z
    :goto_b
    const-string v33, "enable_switch_wifi_ap"

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v34, v0

    if-nez v29, :cond_27

    const/16 v33, 0x1

    :goto_c
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 908
    .end local v8           #extra_bundle:Landroid/os/Bundle;
    .end local v27           #targetKey:Ljava/lang/String;
    .end local v29           #value:Z
    :cond_1c
    return-void

    .line 559
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #bEnableRcs:Z
    .end local v4           #bToggleableNFC:Z
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #hasAdvVpn:Z
    .end local v11           #isCellBroadcastAppLinkEnabled:Z
    .end local v12           #isSecondaryUser:Z
    .end local v13           #isSupportedSmartNetwork:Z
    .end local v14           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v15           #mGlobalProxy:Landroid/preference/Preference;
    .end local v18           #nfcCategory:Landroid/preference/PreferenceCategory;
    .end local v19           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v24           #rcsSetting:Landroid/preference/PreferenceScreen;
    .end local v26           #salesCode:Ljava/lang/String;
    .end local v28           #toggleable:Ljava/lang/String;
    .end local v30           #wfcHolder:Landroid/preference/Preference;
    .end local v31           #wifiCallingHolder:Landroid/preference/Preference;
    .end local v32           #wifiCallingPreferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 604
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v12       #isSecondaryUser:Z
    .restart local v13       #isSupportedSmartNetwork:Z
    .restart local v19       #nsd:Landroid/preference/CheckBoxPreference;
    :cond_1e
    const-string v33, "jjh"

    const-string v34, "mButtonSmartNetworkEnabled == null"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 683
    .restart local v14       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v15       #mGlobalProxy:Landroid/preference/Preference;
    .restart local v24       #rcsSetting:Landroid/preference/PreferenceScreen;
    .restart local v26       #salesCode:Ljava/lang/String;
    .restart local v28       #toggleable:Ljava/lang/String;
    :cond_1f
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 704
    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    const-string v34, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 708
    :cond_21
    const-string v33, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 710
    .local v20, p:Landroid/preference/Preference;
    const v33, 0x7f090697

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 713
    invoke-static {v5}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 731
    .end local v20           #p:Landroid/preference/Preference;
    .restart local v31       #wifiCallingHolder:Landroid/preference/Preference;
    .restart local v32       #wifiCallingPreferenceScreen:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v7

    .line 732
    .local v7, exc:Ljava/lang/RuntimeException;
    const-string v33, "WirelessSettings"

    const-string v34, "Can\'t inflate R.xml.wifi_calling_settings?!?!"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 763
    .end local v7           #exc:Ljava/lang/RuntimeException;
    .restart local v30       #wfcHolder:Landroid/preference/Preference;
    :cond_22
    const-string v33, "SPR"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    const-string v33, "VMU"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    const-string v33, "BST"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    const-string v33, "XAS"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    .line 764
    const-string v33, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 777
    .restart local v11       #isCellBroadcastAppLinkEnabled:Z
    :catch_1
    move-exception v10

    .line 778
    .local v10, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 792
    .end local v10           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v9       #hasAdvVpn:Z
    :cond_23
    const-string v33, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 819
    :catch_2
    move-exception v6

    .line 820
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 834
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #bToggleableNFC:Z
    :cond_24
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 866
    .restart local v3       #bEnableRcs:Z
    .restart local v18       #nfcCategory:Landroid/preference/PreferenceCategory;
    :cond_25
    if-eqz v24, :cond_16

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 899
    .restart local v8       #extra_bundle:Landroid/os/Bundle;
    .restart local v27       #targetKey:Ljava/lang/String;
    :cond_26
    const/16 v29, 0x0

    goto/16 :goto_b

    .line 901
    .restart local v29       #value:Z
    :cond_27
    const/16 v33, 0x0

    goto/16 :goto_c
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 550
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->destroy()V

    .line 551
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1014
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 1027
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 1031
    :cond_3
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1035
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v0, :cond_5

    .line 1053
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1062
    :cond_5
    return-void

    .line 1036
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 205
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 206
    iget-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v10, :cond_0

    sget v10, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 207
    sget v10, Lcom/android/settings/WirelessSettings;->mSettingValue:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v9, 0x1

    .line 208
    .local v9, value:Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_4

    .line 209
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/settings/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 221
    .end local v9           #value:Z
    :cond_0
    :goto_1
    const-string v10, "mobile_network_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_8

    .line 356
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 357
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    .line 359
    .local v7, simState:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    if-eqz v7, :cond_1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_5

    .line 362
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v3, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090a90

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090a91

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 368
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 369
    iget-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v10, :cond_2

    .line 370
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 374
    :cond_2
    const/4 v10, 0x1

    .line 466
    .end local v3           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v7           #simState:I
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_2
    return v10

    .line 207
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .restart local v9       #value:Z
    :cond_4
    move-object v2, p2

    .line 211
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 212
    .local v2, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 378
    .end local v2           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v9           #value:Z
    .restart local v7       #simState:I
    .restart local v8       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v10, "KDI"

    const-string v11, "TMO"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 379
    .local v5, isKDI:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 380
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v4, intent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 383
    const/4 v10, 0x1

    goto :goto_2

    .line 388
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 389
    const-string v10, "mobile_network_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_8

    .line 390
    iget-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v10, :cond_7

    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, args:Landroid/os/Bundle;
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v1

    .line 393
    .local v1, arrayLinkKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 394
    .local v6, openDetailMenuKey:Ljava/lang/String;
    const-string v10, "extra_from_search"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v10, "extra_parent_preference_key"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v10, "extra_link_key_array"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 399
    const-string v10, "extra_setting_value"

    iget v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSecondSettingValue:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 403
    const-string v10, "extra_fragment_bundle_key"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 405
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 406
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 407
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 409
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #arrayLinkKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #openDetailMenuKey:Ljava/lang/String;
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v10, "extra_from_search"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string v10, "extra_parent_preference_key"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v10, "extra_link_key_array"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 413
    const-string v10, "extra_setting_value"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 416
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 417
    const-string v10, "extra_fragment_bundle_key"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    .end local v0           #args:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isKDI:Ljava/lang/Boolean;
    .end local v7           #simState:I
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_9

    const-string v10, "ril.cdma.inecmmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 428
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 431
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 460
    :cond_9
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-ne p2, v10, :cond_b

    .line 461
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v10, :cond_a

    .line 462
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SmartNetworkPreference;->checkSmartNetwork(Landroid/content/Context;)V

    .line 464
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 466
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 921
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 923
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 924
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 939
    :cond_3
    :try_start_0
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.ipsec.vpnclient"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 942
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    if-eqz v1, :cond_c

    .line 944
    const-string v1, "vpn_settings_for_att"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 958
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mWifiCallSwitchPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 973
    :cond_5
    :goto_1
    const-string v0, "rcs_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 975
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    .line 976
    if-eqz v1, :cond_d

    .line 977
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility(Z)V

    .line 985
    :cond_6
    :goto_2
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 986
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 988
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 989
    if-eqz v0, :cond_9

    .line 990
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 992
    :cond_9
    const-string v0, "roaming_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 993
    if-eqz v0, :cond_a

    .line 994
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 999
    :cond_a
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    if-eqz v0, :cond_b

    .line 1000
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings/SmartNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_network"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mSmartNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1010
    :cond_b
    return-void

    .line 947
    :cond_c
    :try_start_2
    const-string v1, "vpn_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 979
    :cond_d
    if-eqz v0, :cond_6

    .line 980
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0, v4}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility(Z)V

    goto :goto_2

    .line 960
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 912
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 914
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 917
    :cond_0
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "pref"

    .prologue
    const v7, 0x7f0902bc

    const/4 v6, 0x3

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 520
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 521
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getCurrentSeRouteInfo()I

    move-result v2

    .line 522
    .local v2, routeType:I
    const-string v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreference : Type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 525
    const v3, 0x7f0902be

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 544
    .end local v2           #routeType:I
    :cond_0
    :goto_0
    return-void

    .line 527
    .restart local v2       #routeType:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, defaultWallet:Ljava/lang/String;
    if-ne v2, v6, :cond_4

    .line 529
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    :cond_2
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 532
    :cond_3
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :cond_4
    if-eqz v0, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 536
    :cond_5
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 538
    :cond_6
    const v3, 0x7f0902bf

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
