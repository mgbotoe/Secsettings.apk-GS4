.class public Lcom/android/settings/wifi/WifiCaptiveActivity;
.super Landroid/app/Activity;
.source "WifiCaptiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;,
        Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private final WIFI_CAPTIVE_PORTAL_CHECK_SERVER:Ljava/lang/String;

.field private isApChecked:Z

.field private isPageOpened:Z

.field private mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

.field private mConnectionText:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/net/InetAddress;

.field private mUrl:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, "clients3.google.com"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->WIFI_CAPTIVE_PORTAL_CHECK_SERVER:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isApChecked:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z

    .line 113
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mConnectionText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiCaptiveActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiCaptiveActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiCaptiveActivity;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mServer:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mServer:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiCaptiveActivity;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 385
    iget-object v5, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 386
    .local v1, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f0400f9

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 388
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, title:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 392
    const-string v4, ""

    .line 394
    :cond_0
    if-nez v3, :cond_1

    .line 395
    const-string v3, ""

    .line 398
    :cond_1
    const v5, 0x7f0b0286

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v5, 0x7f0b008a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090309

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09074d

    new-instance v7, Lcom/android/settings/wifi/WifiCaptiveActivity$11;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity$11;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/WifiCaptiveActivity$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity$10;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method private createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 308
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 309
    .local v0, certificate:Landroid/net/http/SslCertificate;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, certificateView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090306

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 313
    .local v2, newDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09074d

    new-instance v4, Lcom/android/settings/wifi/WifiCaptiveActivity$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity$5;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090305

    new-instance v5, Lcom/android/settings/wifi/WifiCaptiveActivity$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity$4;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/WifiCaptiveActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiCaptiveActivity$3;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    return-object v2
.end method

.method private createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090306

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090307

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090304

    new-instance v3, Lcom/android/settings/wifi/WifiCaptiveActivity$9;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/WifiCaptiveActivity$9;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090308

    new-instance v3, Lcom/android/settings/wifi/WifiCaptiveActivity$8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity$8;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090173

    new-instance v3, Lcom/android/settings/wifi/WifiCaptiveActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiCaptiveActivity$7;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiCaptiveActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/wifi/WifiCaptiveActivity$6;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    .local v0, newDialog:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "WifiCaptiveActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 230
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v3, "WifiCaptiveActivity"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 232
    .local v2, isConn:Z
    const-string v3, "WifiCaptiveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is con "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v2, :cond_1

    .line 234
    const-string v3, "WifiCaptiveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isApChecked:Z

    if-nez v3, :cond_2

    .line 236
    new-instance v3, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    .line 237
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #isConn:Z
    :cond_1
    :goto_0
    return-void

    .line 239
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #isConn:Z
    :cond_2
    const-string v3, "WifiCaptiveActivity"

    const-string v4, "rotation, dont recheck "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 10
    .parameter "server"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, urlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, hostaddress:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 250
    sget-boolean v5, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    if-eqz v5, :cond_0

    .line 251
    const-string v5, "WifiCaptiveActivity"

    const-string v6, "hostaddress lookup failed, return nonCaptivePortail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 255
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/generate_204"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mUrl:Ljava/lang/String;

    .line 256
    sget-boolean v5, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    if-eqz v5, :cond_2

    .line 257
    const-string v5, "WifiCaptiveActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 262
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 263
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 264
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 266
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 267
    sget-boolean v5, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    if-eqz v5, :cond_3

    .line 268
    const-string v5, "WifiCaptiveActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Url connection response code :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v8, 0xcc

    if-eq v5, v8, :cond_5

    move v5, v6

    .line 285
    :goto_1
    if-eqz v4, :cond_4

    .line 286
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v7, v5

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 271
    goto :goto_1

    .line 272
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_8

    .line 277
    :try_start_1
    sget-boolean v5, Lcom/android/settings/wifi/WifiCaptiveActivity;->DBG:Z

    if-eqz v5, :cond_6

    .line 278
    const-string v5, "WifiCaptiveActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Seems to be portal, with exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_6
    if-eqz v4, :cond_7

    .line 286
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v7, v6

    goto/16 :goto_0

    .line 282
    :cond_8
    :try_start_2
    const-string v5, "WifiCaptiveActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 285
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_9

    .line 286
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v5
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .parameter "hostname"

    .prologue
    const/4 v6, 0x0

    .line 294
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 298
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 299
    .local v0, a:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 303
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v3           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :goto_1
    return-object v0

    .line 295
    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 296
    goto :goto_1

    .line 298
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #a:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/net/InetAddress;
    .restart local v3       #i$:I
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 303
    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->requestWindowFeature(I)Z

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v2, 0x7f0401c4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->setContentView(I)V

    .line 156
    iput-object p0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mContext:Landroid/content/Context;

    .line 157
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 158
    const v2, 0x7f0b04e0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    .line 159
    const v2, 0x7f0b04de

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mConnectionText:Landroid/widget/LinearLayout;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 163
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isApChecked:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mConnectionText:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 173
    :goto_0
    new-instance v1, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V

    .line 174
    .local v1, webViewClient:Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 175
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 180
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 183
    iput-object v6, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    .line 185
    const v2, 0x7f0b04e1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, captiveportalcancel:Landroid/view/View;
    new-instance v2, Lcom/android/settings/wifi/WifiCaptiveActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiCaptiveActivity$1;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mFilter:Landroid/content/IntentFilter;

    .line 195
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    new-instance v2, Lcom/android/settings/wifi/WifiCaptiveActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiCaptiveActivity$2;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    return-void

    .line 168
    .end local v0           #captiveportalcancel:Landroid/view/View;
    .end local v1           #webViewClient:Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->isApChecked:Z

    .line 169
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mConnectionText:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 143
    return-void
.end method
