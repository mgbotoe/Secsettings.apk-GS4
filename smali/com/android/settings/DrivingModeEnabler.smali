.class public final Lcom/android/settings/DrivingModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DrivingModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mDrivingModeOnDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DrivingModeEnabler;->mIsInMainMenu:Z

    .line 46
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 47
    iput v2, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    .line 51
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 52
    new-instance v0, Lcom/android/settings/DrivingModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DrivingModeEnabler$1;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 69
    iput v2, p0, Lcom/android/settings/DrivingModeEnabler;->state:I

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DrivingModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DrivingModeEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DrivingModeEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 192
    const/4 v1, 0x1

    .line 195
    .local v1, isSVoiceInstalled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 196
    const-string v2, "DrivingModeEnabler"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DrivingModeEnabler"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 215
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090a8c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a87

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DrivingModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DrivingModeEnabler$2;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 234
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method


# virtual methods
.method public areAllDrivingModeOptionsDisabled()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 238
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_incoming_call_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 239
    .local v3, incomingCall:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_message_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 240
    .local v4, message:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_email_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, email:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_chaton_call_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 242
    .local v1, chatOn:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_voice_mail_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 243
    .local v7, voiceMail:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_alarm_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, alarm:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_schedule_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 245
    .local v5, scheduleNotification:I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_unlock_screen_contents"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 247
    .local v6, unlockScreen:I
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 249
    const/4 v8, 0x1

    .line 251
    :cond_0
    return v8
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 164
    .local v3, state:I
    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeEnabler;->areAllDrivingModeOptionsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/DrivingModeEnabler;->mIsInMainMenu:Z

    if-eqz v4, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/settings/DrivingModeEnabler;->showAllOptionDisabledDialog()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string v4, "DrivingModeEnabler"

    const-string v5, "switch is on"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_driving_mode_on_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, bShowDialog:Z
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/DrivingModeEnabler;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeEnabler;->showDrivingModeOnDialog()V

    goto :goto_0

    .line 180
    .end local v0           #bShowDialog:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_2
    if-nez p2, :cond_0

    if-ne v3, v7, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    const-string v4, "DrivingModeEnabler"

    const-string v5, "switch is off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRIVINGTMODE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v1, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 129
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    return-void

    .line 131
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, state:I
    const-string v1, "DrivingModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput v0, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    .line 111
    if-ne v0, v3, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 82
    iput p2, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    .line 83
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 149
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    :goto_1
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DRIVINGMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public showDrivingModeOnDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 262
    iget-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 264
    iput-object v8, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 267
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 269
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04006c

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0b013e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 271
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v5, Lcom/android/settings/DrivingModeEnabler$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DrivingModeEnabler$3;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v5, 0x7f0b013d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, message:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f090a8e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f090a8f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, messageString:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090a87

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 282
    iget-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 283
    iget-object v5, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/DrivingModeEnabler$4;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/DrivingModeEnabler$4;-><init>(Lcom/android/settings/DrivingModeEnabler;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 291
    return-void
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 90
    .local v0, isChecked:Z
    const-string v2, "DrivingModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    if-ne v1, v5, :cond_1

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
