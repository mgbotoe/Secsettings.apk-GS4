.class public Lcom/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 83
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 3
    .parameter "context"
    .parameter "check_"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 96
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 178
    .local v2, serviceState:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 180
    .local v0, airplaneModeEnabled:Z
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 182
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v0, v3

    .line 192
    :goto_1
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v1, v3

    .line 195
    .local v1, expectAirplaneModeOn:Z
    :goto_2
    if-ne v0, v1, :cond_1

    .line 196
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 198
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 200
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 202
    iget-object v4, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #expectAirplaneModeOn:Z
    :cond_4
    move v0, v4

    .line 191
    goto :goto_1

    :cond_5
    move v1, v4

    .line 194
    goto :goto_2
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 154
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 156
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Intent to IMSService for sending DE-REG packet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 212
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    move v4, p2

    .line 220
    .local v4, value:Z
    const v1, 0x7f090b83

    .line 221
    .local v1, resEnableMsg:I
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    const v1, 0x7f090b86

    .line 225
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 226
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 227
    const v1, 0x7f090b87

    .line 237
    :cond_3
    :goto_1
    if-eqz v4, :cond_7

    move v2, v1

    .line 238
    .local v2, resMsg:I
    :goto_2
    if-eqz v4, :cond_8

    const v3, 0x7f090b81

    .line 239
    .local v3, resTitle:I
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 242
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$4;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$4;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    new-instance v5, Lcom/android/settings/AirplaneModeSwitchEnabler$5;

    invoke-direct {v5, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$5;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 229
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #resMsg:I
    .end local v3           #resTitle:I
    :cond_4
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "CHC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 231
    :cond_5
    const v1, 0x7f090b84

    goto :goto_1

    .line 233
    :cond_6
    const v1, 0x7f090b85

    goto :goto_1

    .line 237
    :cond_7
    const v2, 0x7f090b82

    goto :goto_2

    .line 238
    .restart local v2       #resMsg:I
    :cond_8
    const v3, 0x7f090177

    goto :goto_3
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 316
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, p2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    move v4, p2

    .line 323
    .local v4, value:Z
    const v1, 0x7f090b83

    .line 324
    .local v1, resEnableMsg:I
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 325
    const v1, 0x7f090b86

    .line 328
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 330
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 331
    const v1, 0x7f090b87

    .line 341
    :cond_3
    :goto_1
    if-eqz v4, :cond_7

    move v2, v1

    .line 342
    .local v2, resMsg:I
    :goto_2
    if-eqz v4, :cond_8

    const v3, 0x7f090b81

    .line 343
    .local v3, resTitle:I
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 346
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$6;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler$6;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$7;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$7;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v5, Lcom/android/settings/AirplaneModeSwitchEnabler$8;

    invoke-direct {v5, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$8;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 333
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #resMsg:I
    .end local v3           #resTitle:I
    :cond_4
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "CHC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 335
    :cond_5
    const v1, 0x7f090b84

    goto :goto_1

    .line 337
    :cond_6
    const v1, 0x7f090b85

    goto :goto_1

    .line 341
    :cond_7
    const v2, 0x7f090b82

    goto :goto_2

    .line 342
    .restart local v2       #resMsg:I
    :cond_8
    const v3, 0x7f090177

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    :cond_2
    return-void
.end method

.method public setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 2
    .parameter "check_"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne v0, p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 294
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 295
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 306
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 307
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
