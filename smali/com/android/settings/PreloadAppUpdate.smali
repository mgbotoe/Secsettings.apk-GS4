.class public Lcom/android/settings/PreloadAppUpdate;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreloadAppUpdate.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field builder:Landroid/app/AlertDialog$Builder;

.field private mAutoUpdatePreload:Landroid/preference/ListPreference;

.field private mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

.field private mSummary:[Ljava/lang/String;

.field private mUpdatePrealod:Landroid/preference/PreferenceScreen;

.field private preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreloadAppUpdate;)Lcom/sec/android/samsungapps/util/PreloadUpdate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->addPreferencesFromResource(I)V

    .line 54
    const-string v0, "update_preaload"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mUpdatePrealod:Landroid/preference/PreferenceScreen;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    .line 57
    const-string v0, "auto_update_preload"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sautoupdate_auto_update"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sautoupdate_auto_update"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "auto_update_preload_detail"

    invoke-virtual {p0, v0}, Lcom/android/settings/PreloadAppUpdate;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

    .line 62
    new-instance v0, Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    .line 63
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    new-instance v1, Lcom/android/settings/PreloadAppUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PreloadAppUpdate$1;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->setListener(Lcom/sec/android/samsungapps/util/PreloadUpdate$IPreloadUpdateResultListener;)V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, key:Ljava/lang/String;
    const-string v2, "auto_update_preload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sautoupdate_auto_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdate;->mSummary:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sautoupdate_auto_update"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    const-string v2, "PreloadAppUpdate"

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sautoupdate_auto_update"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 73
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mUpdatePrealod:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_2

    .line 76
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/PreloadAppUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 77
    .local v7, cManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 78
    .local v8, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f09157c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f091582

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0902e3

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$2;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$2;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090a99

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$3;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$3;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/PreloadAppUpdate$4;

    invoke-direct {v4, p0}, Lcom/android/settings/PreloadAppUpdate$4;-><init>(Lcom/android/settings/PreloadAppUpdate;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->alertDialog:Landroid/app/AlertDialog;

    .line 103
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 116
    .end local v7           #cManager:Landroid/net/ConnectivityManager;
    .end local v8           #wifi:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v9

    .line 105
    .restart local v7       #cManager:Landroid/net/ConnectivityManager;
    .restart local v8       #wifi:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->preloadUpdater:Lcom/sec/android/samsungapps/util/PreloadUpdate;

    invoke-virtual {v1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->execute()V

    goto :goto_0

    .line 107
    .end local v7           #cManager:Landroid/net/ConnectivityManager;
    .end local v8           #wifi:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PreloadAppUpdate;->mAutoUpdatePreload_detail:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_0

    .line 108
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v2, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 111
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.PreloadAppUpdateList"

    const-string v4, ""

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
