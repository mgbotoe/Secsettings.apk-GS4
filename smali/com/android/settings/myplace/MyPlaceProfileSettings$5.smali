.class Lcom/android/settings/myplace/MyPlaceProfileSettings$5;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 906
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 910
    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    iput-object p1, v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 913
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v1, v1, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings;I)I

    .line 915
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z
    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings;Z)Z

    .line 921
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 916
    .restart local p1
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto :goto_0
.end method
