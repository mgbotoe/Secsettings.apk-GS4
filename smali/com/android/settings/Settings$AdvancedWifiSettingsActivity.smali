.class public Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedWifiSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3831
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 3834
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 3835
    invoke-virtual {p0}, Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3836
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "advanced"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3837
    invoke-virtual {p0}, Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3838
    invoke-virtual {p0}, Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090318

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 3841
    :cond_0
    return-void
.end method
