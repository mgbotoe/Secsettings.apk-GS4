.class Lcom/android/settings/wifi/WifiCaptiveActivity$5;
.super Ljava/lang/Object;
.source "WifiCaptiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$error:Landroid/net/http/SslError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$5;->val$error:Landroid/net/http/SslError;

    #calls: Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiCaptiveActivity;->access$900(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 317
    const-string v0, "WifiCaptiveActivity"

    const-string v1, "Okay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method
