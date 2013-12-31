.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static mArmFreqLimitHelper:Landroid/os/DVFSHelper;

.field private static mSupportedArmFrequency:[I


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 124
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doCpuPowersaving()V
    .locals 7

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "POWER_SAVING_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 128
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    .line 129
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    if-nez v0, :cond_0

    .line 130
    const-string v0, "PowerNotiReceiver"

    const-string v1, "error : mSupportedArmFrequency == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-wide v1, 0x3fe6666666666666L

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v6

    .line 135
    .local v6, max_cpu_clock:I
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_cpu_clock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-lez v6, :cond_1

    .line 137
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 141
    .end local v6           #max_cpu_clock:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_cpu_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, "PowerNotiReceiver"

    const-string v1, "[PSM_CPU] , do not change CPU clock because PSM_CPU is unchecked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    goto :goto_0
.end method

.method private doDisplayPowersaving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 159
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : doDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 178
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "[PSM_DISPLAY] , do not change UI rendering and brightness because PSM_DISPLAY is unchecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    goto :goto_0
.end method

.method private doPowerSaveAction()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doCpuPowersaving()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doDisplayPowersaving()V

    .line 115
    return-void
.end method

.method private restoreCpuPowersaving()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "PowerNotiReceiver"

    const-string v1, "restoreCpuPowersaving"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 154
    :cond_0
    return-void
.end method

.method private restoreDisplayPowersaving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 197
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 198
    return-void
.end method

.method private restorePowerSaveAction()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    .line 121
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f090c31

    const/4 v6, 0x1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, powersavingState:I
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersavingState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    if-ne v1, v6, :cond_2

    .line 67
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    .line 109
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    if-ne v1, v6, :cond_6

    .line 80
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, strMsg:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 82
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 88
    :cond_4
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_5
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 96
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_6
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #strMsg:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 98
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 102
    :cond_7
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0
.end method
