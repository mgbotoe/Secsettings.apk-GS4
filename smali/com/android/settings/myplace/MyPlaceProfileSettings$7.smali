.class Lcom/android/settings/myplace/MyPlaceProfileSettings$7;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 828
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "selected"

    .prologue
    const/4 v3, 0x1

    .line 832
    const-string v1, "MyPlaceSettings"

    const-string v2, "Select method item is clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    if-nez p2, :cond_1

    .line 836
    const-string v1, "MyPlaceSettings"

    const-string v2, "wifi is clicked. start wifi network picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    if-ne p2, v3, :cond_2

    .line 843
    const-string v1, "MyPlaceSettings"

    const-string v2, "bt is clicked. start bt device picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 850
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 851
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 852
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 853
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
