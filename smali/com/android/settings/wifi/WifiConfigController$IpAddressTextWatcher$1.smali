.class Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher$1;->this$1:Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher$1;->this$1:Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1741
    return-void
.end method
