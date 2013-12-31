.class Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;
.super Ljava/lang/Object;
.source "PowerSavingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    #getter for: Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 259
    const-class v1, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090c33

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 260
    return-void
.end method
