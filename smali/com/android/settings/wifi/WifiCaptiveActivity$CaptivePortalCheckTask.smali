.class Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;
.super Landroid/os/AsyncTask;
.source "WifiCaptiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public isCaptive:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Lcom/android/settings/wifi/WifiCaptiveActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/WifiCaptiveActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    const-string v2, "clients3.google.com"

    #calls: Lcom/android/settings/wifi/WifiCaptiveActivity;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$500(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mServer:Ljava/net/InetAddress;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$402(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mServer:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$400(Lcom/android/settings/wifi/WifiCaptiveActivity;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->isCaptive:Z

    .line 109
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mServer:Ljava/net/InetAddress;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$400(Lcom/android/settings/wifi/WifiCaptiveActivity;)Ljava/net/InetAddress;

    move-result-object v1

    #calls: Lcom/android/settings/wifi/WifiCaptiveActivity;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$600(Lcom/android/settings/wifi/WifiCaptiveActivity;Ljava/net/InetAddress;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->isCaptive:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "WifiCaptiveActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captive v2 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->isCaptive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->isCaptive:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->mConnectionText:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$100(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$200(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$300(Lcom/android/settings/wifi/WifiCaptiveActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "Page loaded first time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    #getter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$200(Lcom/android/settings/wifi/WifiCaptiveActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://www.google.com/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/wifi/WifiCaptiveActivity;->isPageOpened:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$302(Lcom/android/settings/wifi/WifiCaptiveActivity;Z)Z

    .line 90
    :goto_0
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "Page is still captive portal, doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1
    return-void

    .line 88
    :cond_1
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "Page been changed, but still captive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "Page successfully passed captive portal authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCaptiveActivity;->finish()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
