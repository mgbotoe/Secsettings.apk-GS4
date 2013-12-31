.class public final Lcom/android/settings/dormantmode/DormantModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DormantModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

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
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    .line 34
    iput-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 35
    iput v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mPosition:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 38
    new-instance v0, Lcom/android/settings/dormantmode/DormantModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dormantmode/DormantModeEnabler$1;-><init>(Lcom/android/settings/dormantmode/DormantModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 54
    iput v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->state:I

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 61
    iput-boolean p3, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/dormantmode/DormantModeEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dormantmode/DormantModeEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 175
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09129d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091288

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/dormantmode/DormantModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dormantmode/DormantModeEnabler$2;-><init>(Lcom/android/settings/dormantmode/DormantModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 194
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 195
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, state:I
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    if-eqz v2, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->showAllOptionDisabledDialog()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANTMODE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 114
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void

    .line 116
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

    .line 91
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, state:I
    const-string v1, "DormantModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput v0, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mCheck:I

    .line 96
    if-ne v0, v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 67
    iput p2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mPosition:I

    .line 68
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 133
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    :goto_1
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DORMANTMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 75
    .local v0, isChecked:Z
    const-string v2, "DormantModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    if-ne v1, v5, :cond_1

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eqz v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
