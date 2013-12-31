.class public Lcom/android/settings/SambaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SambaSettings.java"


# static fields
.field private static sPrefDefaultPasswd:Landroid/content/SharedPreferences;


# instance fields
.field AndroidServerListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

.field private SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

.field private context:Landroid/content/Context;

.field private ethernet_ip:Ljava/lang/String;

.field private mConfigureDialog:Landroid/app/Dialog;

.field private mDefaultPasswd:Z

.field private mEditPasswd:Landroid/widget/EditText;

.field private mHomesyncMsg:Landroid/preference/PreferenceScreen;

.field private mHomesyncNet:Landroid/preference/PreferenceScreen;

.field private mHomesyncWinOs:Landroid/preference/PreferenceScreen;

.field private mIsEthernetConnected:Z

.field private mIsWifiConnected:Z

.field private mNetbiosName:Landroid/preference/PreferenceScreen;

.field private mNotConnectIp:Ljava/lang/String;

.field private mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

.field private mServerCategory:Landroid/preference/PreferenceCategory;

.field private mShowPasswd:Landroid/widget/CheckBox;

.field private mTempPasswd:Ljava/lang/String;

.field private mUserNameView:Landroid/widget/TextView;

.field private m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

.field private used_ip:Ljava/lang/String;

.field util:Lcom/android/settings/samba/SambaConfig;

.field private wifi_ip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    .line 98
    iput-object v1, p0, Lcom/android/settings/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/SambaSettings;->mDefaultPasswd:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/SambaSettings;->mIsEthernetConnected:Z

    .line 112
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mNotConnectIp:Ljava/lang/String;

    .line 114
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->wifi_ip:Ljava/lang/String;

    .line 116
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->ethernet_ip:Ljava/lang/String;

    .line 118
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/settings/SambaSettings;->mTempPasswd:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/settings/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    .line 421
    new-instance v0, Lcom/android/settings/SambaSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SambaSettings$5;-><init>(Lcom/android/settings/SambaSettings;)V

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->AndroidServerListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

    return-void
.end method

.method private Init_Samba()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/data/samba/private/smbpasswd"

    invoke-static {v0}, Lcom/android/settings/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SambaSettings;->mDefaultPasswd:Z

    .line 452
    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const-string v0, "/data/samba/var/user_name"

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "homesync"

    invoke-static {v0, v1}, Lcom/android/settings/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "/system/bin/smbpasswd -a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "homesync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "1234"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "1234"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/samba/SambaConfig;->run_passwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    :goto_1
    return-void

    .line 455
    :cond_0
    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    const-string v0, "/data/samba/var/user_name"

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "homesync"

    invoke-static {v0, v1}, Lcom/android/settings/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string v0, "/data/samba/var/user_name"

    const-string v1, "/data/samba/var/user_name"

    invoke-static {v1}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    sget-object v1, Lcom/android/settings/samba/SambaConfig;->SAMBA_FIXPASSWDPERMIS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/samba/SambaConfig;->run(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/SambaSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mTempPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/SambaSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/SambaSettings;->mTempPasswd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/SambaSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SambaSettings;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SambaSettings;->isValidPasswd(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SambaSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SambaSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SambaSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/SambaSettings;->isChangePasswd(Landroid/content/Context;)V

    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 574
    if-nez p0, :cond_1

    .line 587
    :cond_0
    return-object v0

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const-string v0, ""

    .line 582
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultPasswd(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, mSPrefChangePasswd:I
    const-string v2, "default_passwd"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/settings/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    .line 633
    sget-object v2, Lcom/android/settings/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    const-string v3, "default_passwd"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 635
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 638
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 568
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 569
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 570
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/SambaSettings;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isChangePasswd(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 621
    const/4 v1, 0x2

    .line 622
    .local v1, mSPrefChangePasswd:I
    const-string v2, "default_passwd"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/settings/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    .line 624
    sget-object v2, Lcom/android/settings/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "default_passwd"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void
.end method

.method private isValidPasswd(Ljava/lang/String;I)Z
    .locals 9
    .parameter "passwd"
    .parameter "length"

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 591
    const/4 v2, 0x0

    .line 593
    .local v2, mValidPasswd:I
    if-nez p2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v3

    .line 595
    :cond_1
    if-lez p2, :cond_2

    if-gt p2, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 596
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09142b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 598
    :cond_2
    if-le p2, v8, :cond_8

    .line 599
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09142c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 601
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_7

    .line 602
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 604
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_5

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x5a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_6

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_6

    .line 601
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 611
    .end local v0           #c:C
    :cond_7
    if-nez v2, :cond_0

    move v3, v4

    .line 614
    goto :goto_0

    .end local v1           #i:I
    :cond_8
    move v3, v4

    .line 616
    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, bWifiConnected:Z
    iget-object v6, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 535
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 536
    .local v3, netInfoEthernet:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 538
    :goto_0
    const-string v6, "SambaSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bWifiConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eqz v0, :cond_2

    .line 542
    const/4 v2, 0x0

    .line 544
    .local v2, ipaddr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/SambaSettings;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 546
    if-nez v2, :cond_1

    .line 547
    iput-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    .line 557
    .end local v2           #ipaddr:Ljava/lang/String;
    :goto_1
    const-string v4, "SambaSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsWifiConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-boolean v4, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    return v4

    :cond_0
    move v0, v5

    .line 536
    goto :goto_0

    .line 549
    .restart local v2       #ipaddr:Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/android/settings/SambaSettings;->wifi_ip:Ljava/lang/String;

    .line 550
    iput-boolean v4, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    goto :goto_1

    .line 553
    .end local v2           #ipaddr:Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    goto :goto_1
.end method


# virtual methods
.method public Display_renew()V
    .locals 13

    .prologue
    const v12, 0x7f091413

    const v11, 0x7f091412

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samba_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, state:I
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "homesync"

    .line 184
    .local v3, netbios_name:Ljava/lang/String;
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew mNetwork_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v7, v0}, Lcom/android/settings/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsEthernetConnected:Z

    if-eqz v5, :cond_1

    .line 188
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON ethernet_ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->ethernet_ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->ethernet_ip:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    .line 201
    :goto_0
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v5, "/data/samba/var/netbios_name"

    invoke-static {v5}, Lcom/android/settings/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "/data/samba/var/netbios_name"

    invoke-static {v7}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, mServerInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "/data/samba/var/netbios_name"

    invoke-static {v7}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, mAccessInofo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :goto_1
    if-ne v4, v8, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsEthernetConnected:Z

    if-eqz v5, :cond_4

    .line 223
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f09140e

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 240
    :cond_0
    :goto_2
    return-void

    .line 190
    .end local v1           #mAccessInofo:Ljava/lang/String;
    .end local v2           #mServerInfo:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    if-eqz v5, :cond_2

    .line 192
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON wifi_ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->wifi_ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->wifi_ip:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mNotConnectIp:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    .line 197
    const-string v5, "SambaSettings"

    const-string v6, "Display_renew no ip"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2       #mServerInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1       #mAccessInofo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 224
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-boolean v5, p0, Lcom/android/settings/SambaSettings;->mIsWifiConnected:Z

    if-eqz v5, :cond_5

    .line 225
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f09140f

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 227
    :cond_5
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f091410

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 230
    :cond_6
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_7
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_8

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_8
    iget-object v5, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->setHasOptionsMenu(Z)V

    .line 134
    new-instance v0, Lcom/android/settings/samba/SambaEnabler;

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/samba/SambaEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/samba/SambaConfig;->getInstance(Landroid/content/Context;)Lcom/android/settings/samba/SambaConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    .line 137
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->addPreferencesFromResource(I)V

    .line 139
    new-instance v0, Lcom/android/settings/samba/ServerReceiver;

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/samba/ServerReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    .line 140
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->AndroidServerListener:Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/samba/ServerReceiver;->setOnChangeServerStatusListener(Lcom/android/settings/samba/ServerReceiver$OnChangeServerStatusListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.SAMBA_RENEW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.SAMBA_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v0, "category_samba_server_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    .line 150
    const-string v0, "samba_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    .line 151
    const-string v0, "samba_netbios_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    .line 152
    const-string v0, "samba_msg"

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mHomesyncMsg:Landroid/preference/PreferenceScreen;

    .line 153
    const-string v0, "samba_windowos"

    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/SambaSettings;->Init_Samba()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->Display_renew()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/SambaSettings;->isWifiConnected()Z

    .line 158
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    const v0, 0x7f091408

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const v0, 0x7f091407

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 249
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->m_ServerReceiver:Lcom/android/settings/samba/ServerReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 419
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 255
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    const-class v2, Lcom/android/settings/samba/SambaLogs;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/SambaSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 257
    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 261
    const v2, 0x7f07007f

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0b000d

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 263
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "homesync"

    .line 265
    const-string v1, "^[a-zA-Z0-9]*$"

    .line 266
    const-string v1, "^[a-zA-Z0-9]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    .line 268
    const-string v1, "/data/samba/var/user_name"

    invoke-static {v1}, Lcom/android/settings/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 272
    :goto_1
    const v0, 0x7f0b016e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mUserNameView:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v0, 0x7f0b05d3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    .line 276
    const v0, 0x7f0b05d6

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 277
    const v1, 0x7f0b05d5

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 278
    const v2, 0x7f0b05d4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    .line 280
    iget-boolean v2, p0, Lcom/android/settings/SambaSettings;->mDefaultPasswd:Z

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f091428

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 282
    iput-boolean v7, p0, Lcom/android/settings/SambaSettings;->mDefaultPasswd:Z

    .line 285
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SambaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    const v5, 0x7f091407

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 289
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/SambaSettings;->getDefaultPasswd(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    const-string v4, "SambaSettings"

    const-string v5, "getDefaultPasswd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 297
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "1234"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 301
    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/SambaSettings$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/SambaSettings$1;-><init>(Lcom/android/settings/SambaSettings;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    new-instance v4, Lcom/android/settings/SambaSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SambaSettings$2;-><init>(Lcom/android/settings/SambaSettings;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    if-eqz v0, :cond_3

    .line 374
    new-instance v1, Lcom/android/settings/SambaSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SambaSettings$3;-><init>(Lcom/android/settings/SambaSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/SambaSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SambaSettings$4;-><init>(Lcom/android/settings/SambaSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 405
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    .line 406
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v3

    .line 407
    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings/samba/SambaEnabler;->pause()V

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/SambaSettings;->mSambaEnabler:Lcom/android/settings/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings/samba/SambaEnabler;->resume()V

    .line 167
    :cond_0
    return-void
.end method
