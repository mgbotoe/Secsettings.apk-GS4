.class Lcom/android/settings/wifi/WifiPickerActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerActivity$5;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivity$5;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    #calls: Lcom/android/settings/wifi/WifiPickerActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/WifiPickerActivity;->access$000(Lcom/android/settings/wifi/WifiPickerActivity;Landroid/content/Context;Landroid/content/Intent;)V

    .line 280
    return-void
.end method
