.class Lcom/android/settings/wifi/mobileap/WifiApWarning$32;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$32;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mIsRoaming:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1802(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 719
    return-void
.end method
