.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final DIALOG_COMMON_ID:I

.field private final DIALOG_GPS_ID:I

.field private final DIALOG_VZW_ID:I

.field private am:Landroid/app/ActivityManager;

.field private e911:Landroid/preference/Preference;

.field private enabledGps:Z

.field private isMsapInstalled:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mConsentDialog:Landroid/app/Dialog;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mDialog:Landroid/app/AlertDialog;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mGpsVzw:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/CheckBoxPreference;

.field private mLocationAccessVzw:Landroid/preference/SwitchPreference;

.field private mMsap:Landroid/preference/CheckBoxPreference;

.field private mMyPlace:Landroid/preference/PreferenceScreen;

.field private mMyPlaceHeading:Landroid/preference/PreferenceCategory;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSearchMenuOpen:Z

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSp:Landroid/preference/SwitchPreferenceScreen;

.field private mTagCamera:Landroid/preference/CheckBoxPreference;

.field private mTagCurrentLocation:Landroid/preference/PreferenceCategory;

.field private mTagScrapbook:Landroid/preference/CheckBoxPreference;

.field private mTagSnote:Landroid/preference/CheckBoxPreference;

.field private mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/LocationSettings;->enabledGps:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mDialog:Landroid/app/AlertDialog;

    .line 124
    iput v1, p0, Lcom/android/settings/LocationSettings;->DIALOG_COMMON_ID:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/LocationSettings;->DIALOG_VZW_ID:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/LocationSettings;->DIALOG_GPS_ID:I

    .line 142
    iput-boolean v1, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/settings/LocationSettings;->isMsapInstalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateTagCurrentLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 176
    .local v3, root:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 179
    :cond_0
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 181
    const v6, 0x7f070051

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 185
    const-string v6, "com.android.smsaplocationservice"

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/LocationSettings;->isMsapInstalled:Z

    .line 189
    const-string v6, "location_toggle_vzw"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccessVzw:Landroid/preference/SwitchPreference;

    .line 190
    const-string v6, "location_e911"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->e911:Landroid/preference/Preference;

    .line 191
    const-string v6, "location_vzw_gps"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    .line 192
    const-string v6, "location_vzw_network"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mLocationAccessVzw:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->e911:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    const-string v6, "location_toggle"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    .line 200
    const-string v6, "location_network"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v6, "location_gps"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 202
    const-string v6, "msap_service"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, defaultValue:I
    iget-boolean v6, p0, Lcom/android/settings/LocationSettings;->isMsapInstalled:Z

    if-nez v6, :cond_d

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :goto_0
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.MSAP_START"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, i:Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    const-string v6, "location_history"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    .line 239
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_2
    const-string v6, "assisted_gps"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "user"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 256
    .local v5, um:Landroid/os/UserManager;
    const-string v6, "no_share_location"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    move v2, v7

    .line 257
    .local v2, isToggleAllowed:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 258
    :cond_3
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 259
    :cond_4
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    :cond_5
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 262
    :cond_6
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "CTC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_9

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 272
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0906b1

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 276
    :cond_a
    const-string v6, "key_my_place"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mMyPlace:Landroid/preference/PreferenceScreen;

    .line 277
    const-string v6, "place"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    .line 290
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_b

    .line 291
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->pm:Landroid/content/pm/PackageManager;

    .line 298
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->pm:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.location.gps"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_c
    const-string v6, "tag_current_location"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    .line 311
    const-string v6, "tag_camera"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    .line 312
    const-string v6, "tag_snote"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    .line 313
    const-string v6, "tag_scrapbook"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    .line 314
    const-string v6, "tag_voice_recorder"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    .line 317
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    return-object v3

    .line 209
    .end local v2           #isToggleAllowed:Z
    .end local v4           #sales_code:Ljava/lang/String;
    .end local v5           #um:Landroid/os/UserManager;
    :cond_d
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "wifi_msap_saved_state"

    invoke-static {v6, v10, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_e

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    goto :goto_2

    .restart local v5       #um:Landroid/os/UserManager;
    :cond_f
    move v2, v8

    .line 256
    goto/16 :goto_1
.end method

.method private onToggleLocationAccess(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 797
    .local v3, um:Landroid/os/UserManager;
    const-string v4, "no_share_location"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    :goto_0
    return-void

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 812
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 813
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 814
    .local v2, lp:Landroid/app/enterprise/LocationPolicy;
    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 815
    const-string v4, "LocationSettings"

    const-string v5, "onToggleLocationAccess lp.isLocationProviderBlocked(LocationManager.GPS_PROVIDER) == false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v4, "gps"

    invoke-static {v0, v4, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 818
    :cond_1
    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 819
    const-string v4, "LocationSettings"

    const-string v5, "onToggleLocationAccess lp.isLocationProviderBlocked(LocationManager.NETWORK_PROVIDER) == false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v4, "network"

    invoke-static {v0, v4, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 826
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    goto :goto_0
.end method

.method private setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "preference"
    .parameter "enable"

    .prologue
    .line 588
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 590
    .local v0, nEnable:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 605
    :goto_1
    return-void

    .line 588
    .end local v0           #nEnable:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    .restart local v0       #nEnable:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_snote"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 596
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_scrapbook"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 599
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_voicerecorder"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 603
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateTagCurrentLocation()V

    goto :goto_1
.end method

.method private showLocationTagAllowDialog(Landroid/preference/Preference;I)V
    .locals 3
    .parameter "preference"
    .parameter "nTitle"

    .prologue
    .line 562
    const-string v0, "LocationSettings"

    const-string v1, "--------------- showLocationTagAllowDialog () ------------------"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091552

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0914e3

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/LocationSettings$8;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/LocationSettings$8;-><init>(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {p0, v1}, Lcom/android/settings/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/LocationSettings$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/LocationSettings$7;-><init>(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LocationSettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/LocationSettings$6;-><init>(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mConsentDialog:Landroid/app/Dialog;

    .line 585
    return-void
.end method

.method private updateLocationToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 690
    .local v4, res:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "enterprise_policy"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 692
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 694
    .local v2, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v2, :cond_1

    .line 695
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 696
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v6, "network"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 698
    :cond_0
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "gps"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 699
    const-string v6, "gps"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v7, :cond_7

    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v7, :cond_7

    .line 701
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 702
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 703
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 711
    :cond_1
    :goto_2
    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 713
    .local v1, gpsEnabled:Z
    const-string v6, "network"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 715
    .local v3, networkEnabled:Z
    const/4 v5, 0x0

    .line 729
    .local v5, vzwEnabled:Z
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 731
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 732
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    .line 733
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_2

    if-eqz v3, :cond_8

    :cond_2
    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 735
    :cond_3
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 736
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v9, "assisted_gps_enabled"

    const/4 v10, 0x2

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_9

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 738
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 774
    :cond_4
    return-void

    .end local v1           #gpsEnabled:Z
    .end local v3           #networkEnabled:Z
    .end local v5           #vzwEnabled:Z
    :cond_5
    move v6, v8

    .line 696
    goto :goto_0

    :cond_6
    move v6, v8

    .line 698
    goto :goto_1

    .line 706
    :cond_7
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .restart local v1       #gpsEnabled:Z
    .restart local v3       #networkEnabled:Z
    .restart local v5       #vzwEnabled:Z
    :cond_8
    move v6, v8

    .line 733
    goto :goto_3

    :cond_9
    move v7, v8

    .line 736
    goto :goto_4
.end method

.method private updateTagCurrentLocation()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_camera"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 610
    .local v0, tagCameraDB:I
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_snote"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 612
    .local v2, tagSnoteDB:I
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_scrapbook"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 614
    .local v1, tagScrapbookDB:I
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_voicerecorder"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 617
    .local v3, tagVoicerecorderDB:I
    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 619
    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 620
    iget-object v4, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 621
    return-void

    :cond_0
    move v4, v6

    .line 617
    goto :goto_0

    :cond_1
    move v4, v6

    .line 618
    goto :goto_1

    :cond_2
    move v4, v6

    .line 619
    goto :goto_2

    :cond_3
    move v5, v6

    .line 620
    goto :goto_3
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 849
    const v0, 0x7f090b1f

    return v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 870
    const-string v5, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " inside isPackageExists and targetPackage is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 874
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 875
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 876
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 877
    const/4 v4, 0x1

    .line 880
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 790
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 791
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 792
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 844
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 836
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 386
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/LocationSettings;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "location_toggle"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    sget v1, Lcom/android/settings/LocationSettings;->mSettingValue:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_0
    move-object v1, p2

    .line 389
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 390
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 558
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v2, v4

    .line 388
    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 410
    const-string v0, "network"

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    const-string v0, "assisted_gps_enabled_older"

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 415
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 416
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 466
    const-string v2, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings/LocationAlert;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/settings/LocationSettings;->startActivity(Landroid/content/Intent;)V

    .line 476
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 470
    :cond_6
    const-string v2, "no_share_location"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 471
    const-string v0, "gps"

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 479
    :cond_7
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    if-eq p2, v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 491
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 492
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0906b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LocationSettings$5;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/LocationSettings$5;-><init>(Lcom/android/settings/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 510
    :cond_9
    const-string v0, "assisted_gps_enabled"

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    const-string v0, "assisted_gps_enabled_older"

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 514
    :cond_a
    const-string v0, "assisted_gps_enabled"

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    move v4, v3

    :cond_b
    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 517
    :cond_c
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 518
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 519
    if-eqz v0, :cond_e

    .line 520
    const-string v1, "LocationSettings"

    const-string v2, "sendBroadcast : Msap enabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MSAP_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_msap_saved_state"

    if-eqz v0, :cond_d

    move v4, v3

    :cond_d
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 525
    :cond_e
    const-string v1, "LocationSettings"

    const-string v2, "sendBroadcast : Msap disabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MSAP_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mMsap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 530
    :cond_f
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 531
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_10

    .line 532
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0910e5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->showLocationTagAllowDialog(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 534
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 536
    :cond_11
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 537
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_12

    .line 538
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090e31

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->showLocationTagAllowDialog(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 540
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 542
    :cond_13
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 543
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_14

    .line 544
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f091550

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->showLocationTagAllowDialog(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 546
    :cond_14
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 548
    :cond_15
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 549
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_16

    .line 550
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f091551

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->showLocationTagAllowDialog(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 552
    :cond_16
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 556
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, super_mOpenDetailMenu:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 332
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 335
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 339
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 341
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateTagCurrentLocation()V

    .line 344
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v5, :cond_1

    .line 345
    new-instance v5, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v5, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 354
    :cond_1
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v5, v6}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 356
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 359
    iget-boolean v5, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    if-eqz v5, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 361
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, targetKey:Ljava/lang/String;
    sget v5, Lcom/android/settings/LocationSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    .line 363
    .local v3, value:Z
    :goto_0
    const-string v5, "location_toggle_vzw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 364
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mLocationAccessVzw:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mLocationAccessVzw:Landroid/preference/SwitchPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/LocationSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 366
    iput-boolean v4, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    .line 379
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v2           #targetKey:Ljava/lang/String;
    .end local v3           #value:Z
    :cond_2
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v2       #targetKey:Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 362
    goto :goto_0

    .line 367
    .restart local v3       #value:Z
    :cond_4
    const-string v5, "location_toggle"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 368
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 370
    iput-boolean v4, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    goto :goto_1

    .line 371
    :cond_5
    const-string v5, "assisted_gps"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    iget-object v5, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 374
    iput-boolean v4, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/LocationSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->mSearchMenuOpen:Z

    .line 162
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 172
    return-void
.end method
