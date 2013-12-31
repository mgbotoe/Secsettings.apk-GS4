.class Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WifiCaptiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 133
    if-eqz p3, :cond_0

    .line 134
    const-string v0, "WifiCaptiveActivity"

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #calls: Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$900(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 137
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "shouldoverride"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$700(Lcom/android/settings/wifi/WifiCaptiveActivity;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V

    #setter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$702(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$700(Lcom/android/settings/wifi/WifiCaptiveActivity;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :goto_0
    const-string v0, "WifiCaptiveActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v3

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$700(Lcom/android/settings/wifi/WifiCaptiveActivity;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->cancel(Z)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #setter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0, v4}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$702(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V

    #setter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$702(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$700(Lcom/android/settings/wifi/WifiCaptiveActivity;)Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
