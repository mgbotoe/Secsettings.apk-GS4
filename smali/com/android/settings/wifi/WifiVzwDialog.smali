.class Lcom/android/settings/wifi/WifiVzwDialog;
.super Landroid/app/AlertDialog;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field private static final DBG:Z

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/EditText;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field private pToast:Landroid/widget/Toast;

.field passwordWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    .line 182
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 184
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 246
    const v1, 0x7f100035

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 123
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 137
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 197
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 198
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 199
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 207
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 221
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1021
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1053
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 247
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 250
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 251
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 252
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 254
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 255
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 254
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 261
    const v1, 0x7f100035

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 123
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 137
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 197
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 198
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 199
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 201
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 207
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 221
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1021
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1053
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 262
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 263
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 265
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 267
    iput v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 268
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 269
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 268
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401ca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 574
    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 576
    return-void
.end method

.method private generateBlankFields(Ljava/net/InetAddress;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x18

    .line 859
    const-string v0, "WifiVzwDialog"

    const-string v2, "generateBlankFields"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0903bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    :try_start_0
    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 883
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 884
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0903b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 894
    :cond_1
    return-void

    .line 869
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 870
    if-ltz v0, :cond_3

    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    .line 875
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    goto :goto_1

    .line 885
    :catch_1
    move-exception v0

    goto :goto_1

    .line 873
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 825
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 827
    if-eqz v0, :cond_1

    move v0, v1

    .line 855
    :goto_1
    return v0

    .line 821
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 836
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 838
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 839
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 844
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 848
    :goto_3
    if-nez v0, :cond_4

    .line 849
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 855
    goto :goto_1

    .line 832
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 845
    :catch_0
    move-exception v0

    move v0, v1

    .line 846
    :goto_4
    const v3, 0x7f090131

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 852
    goto :goto_1

    .line 845
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3f2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1623
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1625
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1626
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1627
    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1652
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, v4, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1654
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1655
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1656
    return-void

    .line 1630
    :cond_1
    const-string v0, "USRPKEY_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1631
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "USRCERT_"

    invoke-virtual {v0, v2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1633
    if-eqz v6, :cond_4

    move v0, v1

    .line 1634
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 1635
    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 1636
    aget-object v7, v3, v0

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1637
    aget-object v7, v3, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1634
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1643
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1646
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1647
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1648
    array-length v3, v0

    invoke-static {v0, v1, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1649
    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1420
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1438
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1415
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1665
    if-eqz p2, :cond_0

    .line 1667
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1668
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1669
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1670
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1675
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1668
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1425
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b050e

    const v4, 0x7f0b0508

    const v3, 0x7f0b050a

    const/4 v2, 0x0

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    .line 1355
    packed-switch p1, :pswitch_data_0

    .line 1410
    :goto_0
    return-void

    .line 1358
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1359
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1360
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1361
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1364
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1366
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1367
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto :goto_0

    .line 1371
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1381
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1383
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1391
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1392
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1393
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    .line 1394
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setIdentityInvisible()V

    .line 1395
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1396
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto/16 :goto_0

    .line 1399
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    .line 1407
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    goto/16 :goto_0

    .line 1355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f0b0501

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1503
    const/4 v0, 0x0

    .line 1505
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_e

    .line 1508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1511
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 1512
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0502

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    .line 1515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0503

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    .line 1517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0504

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1521
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0505

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    .line 1522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1523
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0506

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    .line 1524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1526
    :cond_0
    if-eqz v1, :cond_5

    .line 1527
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1528
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1529
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1531
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1537
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1538
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1545
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1547
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1554
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1555
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1570
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1571
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 1572
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1573
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1575
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1577
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 1578
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1579
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1580
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1584
    :cond_a
    return-void

    .line 1550
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1557
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1561
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f0b051b

    const v6, 0x7f0b051c

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0b051d

    .line 1444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1445
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1452
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1453
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    :cond_1
    :goto_1
    return-void

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1462
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1465
    :cond_4
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1469
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1476
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 1480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1485
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1487
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1491
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 1493
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1471
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1497
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b04fb

    const v5, 0x7f0b04fa

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1587
    const/4 v0, 0x0

    .line 1589
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1595
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1601
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1602
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1604
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1606
    :cond_0
    if-eqz v1, :cond_1

    .line 1607
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1608
    if-eqz v0, :cond_1

    .line 1609
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    :cond_1
    :goto_1
    return-void

    .line 1615
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1167
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1173
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1317
    :cond_2
    :goto_0
    return-void

    .line 1181
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1183
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_4

    .line 1185
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0462

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1197
    if-eqz v0, :cond_5

    .line 1198
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1199
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1200
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1210
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0512

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1202
    :cond_6
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1216
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_d

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    const-string v1, "AKA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    const-string v1, "LEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1236
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1241
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1244
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 1245
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_c

    .line 1252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1253
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1254
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1255
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1256
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    .line 1258
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v3

    .line 1259
    if-eqz v3, :cond_8

    .line 1260
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v5, "fast_provisioning="

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1262
    :cond_8
    sparse-switch v1, :sswitch_data_0

    .line 1281
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1284
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1285
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1305
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1308
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_a

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1310
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 1311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1312
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1265
    :sswitch_0
    packed-switch v2, :pswitch_data_0

    .line 1276
    :pswitch_0
    const-string v1, "WifiVzwDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1267
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1270
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1273
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1291
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_3

    .line 1296
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_3

    .line 1262
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 9
    .parameter

    .prologue
    const v3, 0x7f0903b1

    const v1, 0x7f0903b0

    const v2, 0x7f0903b3

    const v4, 0x7f0903b2

    const/4 v0, 0x0

    .line 897
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v5, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v0

    .line 899
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_0

    .line 904
    :cond_2
    :try_start_0
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 905
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_3

    .line 906
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 907
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->generateBlankFields(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 916
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_6

    .line 917
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0903bb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 925
    if-ltz v1, :cond_5

    const/16 v6, 0x20

    if-le v1, v6, :cond_7

    :cond_5
    move v0, v2

    .line 926
    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    move v0, v1

    .line 910
    goto :goto_0

    :cond_6
    move v0, v2

    .line 920
    goto :goto_0

    .line 929
    :cond_7
    :try_start_1
    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v5, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v3

    goto :goto_0

    .line 930
    :catch_1
    move-exception v0

    move v0, v2

    .line 931
    goto :goto_0

    .line 939
    :cond_8
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 943
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v4

    .line 948
    goto/16 :goto_0

    .line 940
    :catch_2
    move-exception v0

    move v0, v3

    .line 941
    goto/16 :goto_0

    .line 952
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 954
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 958
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 963
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 969
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 955
    :catch_3
    move-exception v0

    move v0, v4

    .line 956
    goto/16 :goto_0

    .line 960
    :cond_a
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 966
    :catch_4
    move-exception v0

    move v0, v4

    .line 967
    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$3;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1130
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 580
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiVzwDialog"

    const-string v7, "enableSubmitIfAppropriate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 583
    .local v4, submit:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 584
    .local v0, connect:Landroid/widget/Button;
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 585
    const-string v6, "WifiVzwDialog"

    const-string v7, "submit button is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 590
    :cond_2
    const/4 v5, 0x0

    .line 591
    .local v5, trimedSsidLength:I
    const/4 v1, 0x1

    .line 592
    .local v1, enabled:Z
    const/4 v3, 0x0

    .line 594
    .local v3, passwordInvalid:Z
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_15

    .line 595
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 596
    .local v2, passLen:I
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_12

    if-ge v2, v10, :cond_12

    .line 598
    :cond_4
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiVzwDialog"

    const-string v7, "password invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_5
    const/4 v3, 0x1

    .line 610
    .end local v2           #passLen:I
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 611
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 612
    const/4 v1, 0x0

    .line 614
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 618
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_a

    .line 619
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v6, v7, :cond_9

    .line 620
    const/4 v1, 0x1

    .line 621
    const/4 v3, 0x0

    .line 623
    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_a

    .line 624
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v6, v7, :cond_16

    .line 625
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const v7, 0x7f090357

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 632
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->ipAndProxyFieldsAreValid()Z

    move-result v6

    if-nez v6, :cond_b

    .line 633
    const/4 v1, 0x0

    .line 636
    :cond_b
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "WifiVzwDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v9, :cond_e

    :cond_d
    if-eqz v3, :cond_e

    .line 638
    const/4 v1, 0x0

    .line 641
    :cond_e
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 642
    const/4 v1, 0x0

    .line 644
    :cond_f
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_10

    if-eqz v3, :cond_10

    .line 645
    const/4 v1, 0x0

    .line 647
    :cond_10
    if-eqz v4, :cond_11

    .line 648
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 649
    :cond_11
    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 600
    .restart local v2       #passLen:I
    :cond_12
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_13

    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 603
    :cond_13
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_14

    const-string v6, "WifiVzwDialog"

    const-string v7, "password invalid (saved ap)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 607
    .end local v2           #passLen:I
    :cond_15
    const-string v6, "WifiVzwDialog"

    const-string v7, "mPasswordView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 627
    :cond_16
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, -0x1

    const/16 v10, 0x22

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 655
    const-string v8, "WifiVzwDialog"

    const-string v9, "getConfig()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v8, v13, :cond_0

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v8, :cond_0

    .line 657
    const/4 v2, 0x0

    .line 816
    :goto_0
    return-object v2

    .line 660
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 662
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v8, :cond_1

    .line 663
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 666
    iput-boolean v12, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 676
    :goto_1
    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    packed-switch v8, :pswitch_data_0

    .line 800
    const/4 v2, 0x0

    goto :goto_0

    .line 667
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v8, v13, :cond_2

    .line 668
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 671
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v8, :cond_3

    .line 672
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 674
    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 678
    :pswitch_0
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->set(I)V

    .line 803
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_6

    .line 804
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 805
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->set(I)V

    .line 807
    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 808
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->set(I)V

    .line 812
    :cond_6
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 813
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 814
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto/16 :goto_0

    .line 682
    :pswitch_1
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->set(I)V

    .line 683
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->set(I)V

    .line 684
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->set(I)V

    .line 685
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 686
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 687
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v4

    .line 688
    .local v4, length:I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, password:Ljava/lang/String;
    const/16 v8, 0xa

    if-eq v4, v8, :cond_7

    const/16 v8, 0x1a

    if-eq v4, v8, :cond_7

    const/16 v8, 0x3a

    if-ne v4, v8, :cond_8

    :cond_7
    const-string v8, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 692
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v8, v11

    goto/16 :goto_2

    .line 694
    :cond_8
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    goto/16 :goto_2

    .line 700
    .end local v4           #length:I
    .end local v5           #password:Ljava/lang/String;
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v8, :cond_9

    .line 701
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 705
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 706
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 707
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 708
    .restart local v5       #password:Ljava/lang/String;
    const-string v8, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 709
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 703
    .end local v5           #password:Ljava/lang/String;
    :cond_9
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 711
    .restart local v5       #password:Ljava/lang/String;
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 717
    .end local v5           #password:Ljava/lang/String;
    :pswitch_3
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v8, :cond_d

    .line 718
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 725
    :goto_4
    new-instance v8, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v8}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 727
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 728
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 730
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 731
    .local v3, eapMethod:I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 732
    .local v6, phase1Method:I
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 733
    .local v7, phase2Method:I
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 734
    sparse-switch v3, :sswitch_data_0

    .line 775
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 778
    :goto_5
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    .local v0, caCert:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v0, ""

    .line 780
    :cond_b
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 781
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 782
    .local v1, clientCert:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v1, ""

    .line 783
    :cond_c
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 784
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 785
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 788
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->isShown()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 791
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 792
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 719
    .end local v0           #caCert:Ljava/lang/String;
    .end local v1           #clientCert:Ljava/lang/String;
    .end local v3           #eapMethod:I
    .end local v6           #phase1Method:I
    .end local v7           #phase2Method:I
    :cond_d
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v8, :cond_e

    .line 720
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 722
    :cond_e
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 723
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v14}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 739
    .restart local v3       #eapMethod:I
    .restart local v6       #phase1Method:I
    .restart local v7       #phase2Method:I
    :sswitch_0
    packed-switch v7, :pswitch_data_1

    .line 750
    const-string v8, "WifiVzwDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown phase2 method"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 741
    :pswitch_4
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 744
    :pswitch_5
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 747
    :pswitch_6
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 755
    :sswitch_1
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 756
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 758
    packed-switch v7, :pswitch_data_2

    .line 769
    const-string v8, "WifiVzwDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown phase2 method"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 760
    :pswitch_7
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 763
    :pswitch_8
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 766
    :pswitch_9
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 796
    .restart local v0       #caCert:Ljava/lang/String;
    .restart local v1       #clientCert:Ljava/lang/String;
    :cond_f
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 734
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 758
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1695
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1696
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 1697
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1698
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b051d

    const v4, 0x7f0b051c

    const v3, 0x7f0b0518

    const/4 v2, 0x0

    .line 977
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b04bd

    if-ne v0, v1, :cond_4

    .line 979
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 983
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 985
    :cond_0
    const-string v0, "WifiVzwDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_1
    :goto_0
    return-void

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 990
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 994
    if-ltz v1, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 990
    :cond_3
    const/16 v0, 0x80

    goto :goto_1

    .line 997
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0517

    if-ne v0, v1, :cond_6

    .line 998
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 999
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1001
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1003
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1004
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 1006
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    .line 1007
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1010
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1011
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 1013
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    .line 1014
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 288
    const-string v18, "WifiVzwDialog"

    const-string v19, "onCreate()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 291
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 292
    .local v13, resources:Landroid/content/res/Resources;
    const-string v18, "enterprise_policy"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f0401c8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setView(Landroid/view/View;)V

    .line 295
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 301
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v8, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 302
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 306
    new-instance v18, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a004a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 311
    new-instance v18, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a004b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 316
    const v18, 0x7f090358

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0500

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04f9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0077

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 325
    .local v11, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 326
    const-string v18, "WifiVzwDialog"

    const-string v19, "onCreate: mAccessPoint == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const v18, 0x7f09030e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0287

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0516

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0517

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    const/16 v18, -0x3

    const v19, 0x7f090468

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x14

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 486
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 488
    const/16 v18, -0x3

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 497
    :goto_1
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 512
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 513
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 514
    sget v18, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 515
    const/16 v18, -0x1

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 518
    :cond_1
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 519
    sget v18, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v18, :cond_1c

    .line 520
    const/16 v18, -0x2

    const v19, 0x7f090331

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 521
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 526
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 529
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 530
    sget v18, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 531
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 535
    .local v9, group:Landroid/view/ViewGroup;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 537
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_1d

    .line 539
    const v18, 0x7f09046e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    .end local v9           #group:Landroid/view/ViewGroup;
    :cond_3
    :goto_4
    const/16 v18, -0x3

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 547
    const/16 v18, -0x2

    const v19, 0x7f09032f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 549
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 551
    const/16 v18, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 554
    :cond_5
    return-void

    .line 348
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 349
    const v18, 0x7f09046f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 355
    .restart local v9       #group:Landroid/view/ViewGroup;
    const-string v18, "WifiVzwDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate: details "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 357
    .local v16, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v16, :cond_7

    .line 358
    const v18, 0x7f090345

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 360
    :cond_7
    const v18, 0x7f0a002a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 361
    .local v17, type:[Ljava/lang/String;
    const v18, 0x7f090343

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    .line 364
    .local v12, level:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_9

    .line 365
    const v18, 0x7f0a003b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, signal:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v12, v0, :cond_8

    .line 367
    const-string v18, "WifiVzwDialog"

    const-string v19, "Force level of wifi signal"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .line 370
    :cond_8
    const v18, 0x7f090344

    aget-object v19, v15, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 373
    .end local v15           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 375
    .local v10, info:Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_a

    .line 376
    const v18, 0x7f090346

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 378
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 379
    .local v5, address:I
    if-eqz v5, :cond_a

    .line 380
    const v18, 0x7f090347

    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 385
    .end local v5           #address:I
    :cond_a
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 387
    .local v7, config_details:Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_c

    .line 388
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 389
    const v18, 0x7f0902d2

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 391
    :cond_b
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 392
    const v18, 0x7f0902d3

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 398
    .end local v7           #config_details:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v14, 0x0

    .line 399
    .local v14, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 400
    const-string v18, "WifiVzwDialog"

    const-string v19, "network id is valid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 402
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 403
    const-string v18, "WifiVzwDialog"

    const-string v19, "ip assignment static"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 405
    const/4 v14, 0x1

    .line 411
    :goto_6
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 412
    const-string v18, "WifiVzwDialog"

    const-string v19, "proxy static"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 414
    const/4 v14, 0x1

    .line 420
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 421
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 427
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0516

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0517

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    if-eqz v14, :cond_f

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0517

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0518

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0287

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 449
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 450
    const-string v18, "WifiVzwDialog"

    const-string v19, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 452
    const/16 v18, -0x3

    const v19, 0x7f090468

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 453
    const-string v18, "WifiVzwDialog"

    const-string v19, "EDIT true connect and submit btn set "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/settings/wifi/WifiVzwDialog;->previousssid:Ljava/lang/String;

    .line 455
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiVzwDialog;->bEdit:I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v18

    if-nez v18, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 351
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v12           #level:I
    .end local v14           #showAdvancedFields:Z
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #type:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 407
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #group:Landroid/view/ViewGroup;
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    .restart local v12       #level:I
    .restart local v14       #showAdvancedFields:Z
    .restart local v16       #state:Landroid/net/NetworkInfo$DetailedState;
    .restart local v17       #type:[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 416
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 423
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 465
    :cond_14
    if-nez v16, :cond_17

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_17

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 467
    const v18, 0x7f09046e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    :cond_15
    :goto_9
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 474
    const-string v18, "WifiVzwDialog"

    const-string v19, "EDIT false state null set connect button "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 480
    const/16 v18, -0x1

    const v19, 0x7f090467

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 469
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 470
    const v18, 0x7f090330

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 476
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04ff

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 490
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v12           #level:I
    .end local v14           #showAdvancedFields:Z
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #type:[Ljava/lang/String;
    :cond_18
    const/16 v18, -0x3

    const v19, 0x7f09032d

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 491
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 492
    const-string v18, "WifiVzwDialog"

    const-string v19, "vzwViewFlag sets to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v18, -0x2

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 494
    const/16 v18, 0x0

    sput v18, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 499
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 501
    .restart local v16       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v16, :cond_1b

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 504
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 505
    .restart local v9       #group:Landroid/view/ViewGroup;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 508
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_1b
    const/16 v18, -0x2

    const v19, 0x7f090469

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 523
    :cond_1c
    const/16 v18, -0x2

    const v19, 0x7f09032f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 524
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 542
    .restart local v9       #group:Landroid/view/ViewGroup;
    :cond_1d
    const v18, 0x7f090330

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1142
    iput p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 1143
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 1146
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 1155
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 1156
    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1149
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1151
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    goto :goto_0

    .line 1153
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1127
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1678
    const-string v0, "WifiVzwDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1681
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1683
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1685
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1688
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1689
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1691
    :cond_2
    return-void
.end method
