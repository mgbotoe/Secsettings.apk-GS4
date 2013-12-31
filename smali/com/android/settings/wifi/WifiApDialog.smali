.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private customView:Landroid/view/View;

.field private hideSsidDoNotShowAgain:Z

.field private isShowPassword:Z

.field private isTimeoutValueChanged:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mChannel5genabled:Z

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiApDialog;->DBG:Z

    .line 153
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    const v0, 0x7f100035

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 100
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 101
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 105
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 120
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 127
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    .line 128
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 129
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5genabled:Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 141
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    .line 142
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 149
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 375
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 717
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 741
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 163
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 165
    if-eqz p3, :cond_0

    .line 166
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 168
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 169
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 170
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 180
    :cond_0
    return-void

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/WifiApDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 8

    .prologue
    .line 1115
    const-string v0, "/sys/class/sec/switch/chg_type"

    .line 1116
    .local v0, CHG_TYPE_FILE:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1117
    .local v1, buf:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1119
    .local v3, bufReadLine:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    .end local v1           #buf:Ljava/io/BufferedReader;
    .local v2, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1121
    const-string v5, "WifiApDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1126
    if-eqz v2, :cond_0

    .line 1127
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 1133
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1134
    :cond_2
    const/4 v5, 0x1

    .line 1136
    :goto_1
    return v5

    .line 1128
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1129
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1131
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1122
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1123
    .restart local v4       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1126
    if-eqz v1, :cond_1

    .line 1127
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1128
    :catch_2
    move-exception v4

    .line 1129
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1125
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1126
    :goto_3
    if-eqz v1, :cond_3

    .line 1127
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1130
    :cond_3
    :goto_4
    throw v5

    .line 1128
    :catch_3
    move-exception v4

    .line 1129
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1136
    .end local v4           #e:Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1125
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1122
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1155
    sparse-switch p1, :sswitch_data_0

    .line 1169
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1157
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1159
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1161
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1163
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1165
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1167
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1155
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 1173
    packed-switch p1, :pswitch_data_0

    .line 1187
    :goto_0
    :pswitch_0
    return v0

    .line 1175
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1177
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1179
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1183
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1185
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1149
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1043
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1047
    :cond_2
    if-eqz v0, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1056
    if-eqz p1, :cond_0

    .line 1057
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1058
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1062
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setTimeout(I)V
    .locals 3
    .parameter

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1144
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1146
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b04bc

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 952
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 953
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 954
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 965
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 966
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 970
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b04bd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 977
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 979
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 972
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 767
    const/4 v3, 0x0

    .line 768
    .local v3, trimedSsidLength:I
    const/4 v2, 0x0

    .line 769
    .local v2, trimedPasswordLength:I
    const/4 v1, 0x1

    .line 771
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 772
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 774
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 775
    :cond_0
    const/4 v1, 0x0

    .line 779
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v4, :cond_2

    .line 780
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 783
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_4

    :cond_3
    if-eqz v2, :cond_6

    :cond_4
    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v4, v6, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_7

    .line 785
    :cond_6
    const/4 v1, 0x0

    .line 788
    :cond_7
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 789
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_8

    .line 790
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 792
    :cond_8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 862
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 858
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 992
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 237
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 243
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 244
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 246
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 254
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 277
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    return-object v0

    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move v2, v4

    .line 240
    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 260
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 261
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 262
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 269
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 270
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 693
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 714
    :cond_2
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 704
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 852
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 798
    .restart local p1
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x90

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 803
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 805
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 798
    .end local v2           #password:Ljava/lang/String;
    :cond_1
    const/16 v3, 0x80

    goto :goto_1

    .line 808
    .restart local p1
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b04bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 814
    .restart local p1
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 815
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f09043b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 817
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 818
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v6, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v3, v5

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 819
    const-string v3, "WifiApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideSsidDoNotShowAgain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    if-nez v3, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    .line 826
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 834
    .local v0, is2gChecked:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    move v6, v3

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 835
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 836
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v4

    .line 834
    goto :goto_3

    :cond_6
    move v4, v3

    .line 835
    goto :goto_4

    :cond_7
    move v5, v3

    .line 836
    goto :goto_5

    .line 839
    .end local v0           #is2gChecked:Z
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 847
    .local v1, is5gChecked:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 848
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 849
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v1, :cond_a

    :goto_7
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v6, v3

    .line 847
    goto :goto_6

    :cond_a
    move v5, v3

    .line 849
    goto :goto_7

    .line 796
    :pswitch_data_0
    .packed-switch 0x7f0b04b8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0401bb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 431
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 432
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 433
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04b9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 439
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 440
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 443
    .local v3, context:Landroid/content/Context;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 444
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 446
    new-instance v8, Lcom/android/settings/Utils$LengthFilter;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 447
    .local v8, lengthFilter:Lcom/android/settings/Utils$LengthFilter;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0287

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04b7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 450
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0462

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 451
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 454
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04b8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 455
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 456
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_0

    .line 457
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v10, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 459
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 462
    .local v1, advanced:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 463
    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 466
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 479
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 480
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 481
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    .line 482
    const/4 v6, 0x0

    .line 485
    .local v6, getChinfo:I
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 493
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    if-lez v9, :cond_3

    .line 494
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 495
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 497
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    .line 500
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    if-ge v7, v9, :cond_1

    .line 501
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v10, v10, v7

    aput-object v10, v9, v7

    .line 500
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 503
    :cond_1
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    if-lez v9, :cond_2

    .line 504
    iget v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    :goto_1
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_2

    .line 505
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    sub-int v11, v7, v11

    aget-object v10, v10, v11

    aput-object v10, v9, v7

    .line 504
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 508
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v10, 0x1090008

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 509
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 510
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 511
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 513
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v10, 0xe

    if-ge v9, v10, :cond_9

    .line 514
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 515
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 516
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 517
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 518
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 537
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #i:I
    :cond_3
    :goto_2
    const/4 v9, -0x1

    const v10, 0x7f090468

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 538
    const/4 v9, -0x2

    const v10, 0x7f090469

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 541
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_5

    .line 542
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v10, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 544
    const v9, 0x7f090447

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 549
    :goto_3
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 558
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 560
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 564
    :goto_5
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 566
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v10, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 568
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 578
    :cond_5
    :goto_6
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 579
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 580
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 582
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04bd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 585
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    .line 586
    .local v5, defaultValue:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "USC"

    sget-object v10, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 588
    :cond_6
    const/4 v5, 0x1

    .line 590
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04bd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v10, "wifi_ap_show_passwd"

    invoke-static {v4, v10, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 594
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 596
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    .line 598
    sget v2, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    .line 637
    .local v2, changeableMaxvalue:I
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_8

    .line 638
    if-eqz v2, :cond_10

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v2, v9, :cond_10

    .line 639
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 643
    :cond_8
    :goto_8
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 644
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 650
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 652
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 653
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 659
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 661
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 662
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 664
    return-void

    .line 520
    .end local v2           #changeableMaxvalue:I
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #defaultValue:I
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v7       #i:I
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 522
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 523
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 524
    const/4 v7, 0x0

    :goto_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    array-length v9, v9

    if-ge v7, v9, :cond_3

    .line 525
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v9, v9, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 526
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 524
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 546
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #i:I
    :cond_b
    const v9, 0x7f0904ff

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_3

    .line 553
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 563
    :cond_d
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 570
    :cond_e
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 590
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v5       #defaultValue:I
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 641
    .restart local v2       #changeableMaxvalue:I
    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto/16 :goto_8
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v7, 0x7f090505

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 867
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 868
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 938
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 945
    :cond_0
    return-void

    .line 870
    :sswitch_0
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 871
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 876
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v2, :cond_1

    .line 877
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 880
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 889
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 890
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 894
    .end local v0           #context:Landroid/content/Context;
    :sswitch_1
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 895
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 896
    const-string v2, "WifiApDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    if-ne p3, v6, :cond_2

    .line 898
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 900
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 902
    .restart local v0       #context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v2, :cond_3

    .line 903
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 906
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 915
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 916
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 920
    .end local v0           #context:Landroid/content/Context;
    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 921
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 924
    :sswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 925
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 926
    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto/16 :goto_0

    .line 930
    :sswitch_4
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto/16 :goto_0

    .line 933
    :sswitch_5
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 934
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 935
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTimeout(I)V

    goto/16 :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x7f0b04b9 -> :sswitch_0
        0x7f0b04ba -> :sswitch_1
        0x7f0b04c2 -> :sswitch_2
        0x7f0b04c3 -> :sswitch_3
        0x7f0b04c5 -> :sswitch_4
        0x7f0b04c7 -> :sswitch_5
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 855
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b04bd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1011
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b04b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1012
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1014
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1015
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1016
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 1023
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1019
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1020
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1021
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 1005
    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 996
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const v2, 0x7f0b04bf

    .line 668
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 680
    :cond_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    .prologue
    .line 1066
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1067
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    .line 1068
    const v1, 0x7f090443

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1069
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1070
    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$5;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApDialog$6;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1088
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1089
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1090
    return-void
.end method
