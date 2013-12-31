.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;
.super Ljava/lang/Object;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 195
    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_2

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, powersavingState:I
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #calls: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #calls: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #getter for: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z
    invoke-static {v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$300(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f091226

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    const/4 v1, 0x1

    .line 205
    .end local v0           #powersavingState:I
    :cond_2
    return v1
.end method
