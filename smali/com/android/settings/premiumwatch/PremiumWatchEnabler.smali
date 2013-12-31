.class public final Lcom/android/settings/premiumwatch/PremiumWatchEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PremiumWatchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

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

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mIsInMainMenu:Z

    .line 43
    iput-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 44
    iput v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mPosition:I

    .line 46
    iput-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    iput v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->state:I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.PREMIUM_WATCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 66
    return-void
.end method

.method private putIntToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "path"
    .parameter "value"

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, ret:I
    const/4 v1, 0x0

    .line 182
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 184
    const/4 v3, 0x0

    .line 189
    if-eqz v2, :cond_0

    .line 191
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    move v4, v3

    .line 197
    .end local v3           #ret:I
    .local v4, ret:I
    :goto_1
    return v4

    .line 192
    .end local v1           #out:Ljava/io/BufferedWriter;
    .end local v4           #ret:I
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #ret:I
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PremiumWatchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "PremiumWatchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const/4 v3, -0x1

    .line 189
    if-eqz v1, :cond_1

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move v4, v3

    .line 197
    .end local v3           #ret:I
    .restart local v4       #ret:I
    goto :goto_1

    .line 192
    .end local v4           #ret:I
    .restart local v3       #ret:I
    :catch_2
    move-exception v0

    .line 193
    const-string v5, "PremiumWatchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    .line 191
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    move v4, v3

    .line 197
    .end local v3           #ret:I
    .restart local v4       #ret:I
    goto :goto_1

    .line 192
    .end local v4           #ret:I
    .restart local v3       #ret:I
    :catch_3
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "PremiumWatchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 185
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, state:I
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const-string v2, "/sys/class/sec/sec_touchkey/two_touch_wakeup_mode"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    const-string v2, "/sys/class/sec/sec_touchkey/two_touch_wakeup_mode"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 141
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    :goto_1
    const-string v1, "PremiumWatchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch PREMIUM_WATCH_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 84
    .local v0, isChecked:Z
    const-string v2, "PremiumWatchEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    if-ne v1, v5, :cond_1

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
