.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    .line 731
    return-void
.end method
