.class Lcom/android/settings/SPenSettingsMenu$10;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showAirViewDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$10;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$10;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$400(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    const-string v0, "SPenSettingsMenu"

    const-string v1, "Air view switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method
