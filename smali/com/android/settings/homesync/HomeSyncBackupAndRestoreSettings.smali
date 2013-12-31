.class public Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSyncBackupAndRestoreSettings.java"


# static fields
.field public static final LINE_SEPERATOR:Ljava/lang/String;


# instance fields
.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mRestore:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->LINE_SEPERATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getLastBackupTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.homesync_pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 159
    .local v4, sharedPref:Landroid/content/SharedPreferences;
    const-string v5, "last_backup_time"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 160
    .local v1, lastBackupTime:J
    const/4 v3, 0x0

    .line 161
    .local v3, lastBackupTimeText:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 163
    .local v0, date:Ljava/util/Date;
    const-string v5, "HomeSyncBackupAndRestoreSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastBackupTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    cmp-long v5, v1, v8

    if-eqz v5, :cond_0

    .line 166
    const-string v5, "yyyy-MM-dd hh:mm aaa"

    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_0
    const-string v5, "HomeSyncBackupAndRestoreSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastBackupTimeText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v3
.end method

.method private getLastRestoreTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.homesync_pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 177
    .local v4, sharedPref:Landroid/content/SharedPreferences;
    const-string v5, "last_restore_time"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 178
    .local v1, lastRestoreTime:J
    const/4 v3, 0x0

    .line 179
    .local v3, lastRestoreTimeText:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 181
    .local v0, date:Ljava/util/Date;
    const-string v5, "HomeSyncBackupAndRestoreSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastRestoreTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    cmp-long v5, v1, v8

    if-eqz v5, :cond_0

    .line 184
    const-string v5, "yyyy-MM-dd hh:mm aaa"

    invoke-static {v5, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_0
    const-string v5, "HomeSyncBackupAndRestoreSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastRestoreTimeText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v3
.end method


# virtual methods
.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "resId"

    .prologue
    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0914bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ada

    new-instance v3, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings$1;-><init>(Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 119
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 120
    const-string v0, "account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v2, "HomeSyncBackupAndRestoreSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult accountName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-ne p1, v5, :cond_1

    .line 124
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 125
    const-class v3, Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 126
    const v3, 0x7f09149e

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 127
    invoke-virtual {v2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 130
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 131
    const-class v3, Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 132
    const v3, 0x7f09149f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 133
    invoke-virtual {v2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0

    .line 138
    :cond_2
    if-eqz p3, :cond_3

    .line 139
    const-string v0, "account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_1
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0913b6

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f09149d

    const v4, 0x7f09149c

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 70
    .local v2, screen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 71
    .local v0, backupTime:Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, restoreTime:Ljava/lang/String;
    const-string v3, "contents_backup"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 74
    const-string v3, "contents_restore"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mRestore:Landroid/preference/PreferenceScreen;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getLastBackupTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0914c7

    invoke-virtual {p0, v4}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getLastBackupTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getLastRestoreTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->LINE_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0914c8

    invoke-virtual {p0, v4}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getLastRestoreTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_1
    iget-object v3, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mRestore:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 95
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_2

    .line 96
    const v2, 0x7f0914be

    .line 97
    .local v2, resId:I
    iget-object v4, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mRestore:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_0

    .line 98
    const v2, 0x7f0914bf

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 100
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #resId:I
    :cond_1
    :goto_0
    return v6

    .line 105
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "key_request_for"

    const-string v5, "checkaccount"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v4, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_3

    .line 109
    invoke-virtual {p0, v1, v6}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->mRestore:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    .line 111
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/homesync/HomeSyncBackupAndRestoreSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
