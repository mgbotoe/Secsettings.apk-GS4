.class Lcom/android/settings/AirViewSettings$11;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$11;->this$0:Lcom/android/settings/AirViewSettings;

    iput-object p2, p0, Lcom/android/settings/AirViewSettings$11;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .parameter "dialog"

    .prologue
    const/4 v7, 0x1

    .line 551
    iget-object v4, p0, Lcom/android/settings/AirViewSettings$11;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V
    invoke-static {v4}, Lcom/android/settings/AirViewSettings;->access$600(Lcom/android/settings/AirViewSettings;)V

    .line 552
    iget-object v4, p0, Lcom/android/settings/AirViewSettings$11;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/AirViewSettings;->access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_view_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 553
    .local v0, airViewIndex:I
    iget-object v4, p0, Lcom/android/settings/AirViewSettings$11;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/AirViewSettings;->access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 555
    iget-object v4, p0, Lcom/android/settings/AirViewSettings$11;->val$layout:Landroid/view/View;

    const v5, 0x7f0b013b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 556
    .local v1, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/android/settings/AirViewSettings$11;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-virtual {v4}, Lcom/android/settings/AirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.airviewsettings.aircommand"

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 559
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 560
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DoNotShowDialog"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
