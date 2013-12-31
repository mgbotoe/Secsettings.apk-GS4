.class Lcom/android/settings/myplace/MyPlaceProfileSettings$3;
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
    .line 753
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 756
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    iput-object p1, v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 757
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    iget-object v2, v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 759
    .local v1, selected:I
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click ok on Select method dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-nez v1, :cond_3

    .line 763
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0913dd

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 803
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string v2, "MyPlaceSettings"

    const-string v3, "map is clicked. start mapview"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v3

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    :cond_1
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v3

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    :cond_2
    const-string v2, "map_latitude"

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v3

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v2, "map_longtitude"

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v3

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 784
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    if-ne v1, v5, :cond_4

    .line 785
    const-string v2, "MyPlaceSettings"

    const-string v3, "wifi is clicked. start wifi network picker"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 791
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    if-ne v1, v6, :cond_5

    .line 792
    const-string v2, "MyPlaceSettings"

    const-string v3, "bt is clicked. start bt device picker"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2, v0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 799
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 800
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 801
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    goto/16 :goto_0
.end method
