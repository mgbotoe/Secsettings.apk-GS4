.class public Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
.super Landroid/preference/Preference;
.source "WifiP2pPersistentGroup.java"


# instance fields
.field public mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 37
    return-void
.end method
