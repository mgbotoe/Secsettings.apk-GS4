.class Lcom/android/settings/wfd/WfdPickerActivity$15;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2014
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4100(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2600(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2016
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2018
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2019
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$15;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 2021
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2022
    return-void
.end method
