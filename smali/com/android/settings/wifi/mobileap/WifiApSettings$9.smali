.class Lcom/android/settings/wifi/mobileap/WifiApSettings$9;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 712
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/16 v2, 0x8

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 720
    return-void
.end method
