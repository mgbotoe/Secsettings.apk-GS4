.class Lcom/android/settings/myplace/MyPlaceProfileSettings$9;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 1161
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v2, v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1162
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1164
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1165
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1168
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1169
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v2, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1170
    return-void
.end method
