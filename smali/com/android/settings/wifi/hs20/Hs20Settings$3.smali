.class Lcom/android/settings/wifi/hs20/Hs20Settings$3;
.super Ljava/lang/Object;
.source "Hs20Settings.java"

# interfaces
.implements Lcom/android/settings/wifi/hs20/Hs20PickerDialog$OnScanButtonPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20Settings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanPressed()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$3;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    #getter for: Lcom/android/settings/wifi/hs20/Hs20Settings;->mScanner:Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;
    invoke-static {v0}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$100(Lcom/android/settings/wifi/hs20/Hs20Settings;)Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->startScan()V

    .line 122
    return-void
.end method
