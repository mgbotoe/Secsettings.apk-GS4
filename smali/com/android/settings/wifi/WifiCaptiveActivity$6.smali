.class Lcom/android/settings/wifi/WifiCaptiveActivity$6;
.super Ljava/lang/Object;
.source "WifiCaptiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCaptiveActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCaptiveActivity;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$6;->this$0:Lcom/android/settings/wifi/WifiCaptiveActivity;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$6;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCaptiveActivity$6;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 377
    return-void
.end method
