.class public final Lcom/android/settings/personalpage/PersonalPageEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:I

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
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 29
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mPosition:I

    .line 32
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageEnabler$1;-><init>(Lcom/android/settings/personalpage/PersonalPageEnabler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 45
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->state:I

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 51
    iput-boolean p3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 53
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 132
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, state:I
    if-eqz p2, :cond_3

    if-nez v2, :cond_3

    .line 135
    iget-boolean v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "PersonalPageEnabler"

    const-string v4, "Outter switch is on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.PERSONALPAGE_DISCLAIMER_LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "donotshow"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v3, "switchon"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isLockTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_lock_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, lockType:I
    if-nez v1, :cond_2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #lockType:I
    :cond_2
    const-string v3, "PersonalPageEnabler"

    const-string v4, "inner switch is on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.PERSONALPAGE_DISCLAIMER_LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "donotshow"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v3, "switchon"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    if-nez p2, :cond_0

    if-ne v2, v5, :cond_0

    .line 161
    const-string v3, "PersonalPageEnabler"

    const-string v4, "switch is off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v2, 0x0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.PERSONALPAGE_DISCLAIMER_LAUNCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "donotshow"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v3, "switchon"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PERSONALPAGE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 98
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void

    .line 100
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, state:I
    const-string v1, "PersonalPageEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    .line 87
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.PERSONALPAGE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 57
    iput p2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mPosition:I

    .line 58
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 117
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    :goto_1
    const-string v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch PERSONALPAGE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 65
    .local v0, isChecked:Z
    const-string v2, "PersonalPageEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    if-ne v1, v5, :cond_1

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
